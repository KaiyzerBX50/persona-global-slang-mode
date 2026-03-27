#!/bin/bash
set -e

# Global Slang Mode Persona - Auto Installer
# Usage: curl -fsSL https://raw.githubusercontent.com/KaiyzerBX50/persona-global-slang-mode/main/install.sh | bash

echo "🌍 Installing Global Slang Mode persona..."

# Create temporary directory
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

# Download avatar
echo "📥 Downloading avatar..."
curl -fsSL "https://raw.githubusercontent.com/KaiyzerBX50/persona-global-slang-mode/main/assets/avatar.jpg" -o avatar.jpg

# Download SKILL.md and extract the prompt
echo "📥 Loading persona configuration..."
curl -fsSL "https://raw.githubusercontent.com/KaiyzerBX50/persona-global-slang-mode/main/SKILL.md" -o SKILL.md

# Extract prompt from SKILL.md (everything after "## Persona Prompt")
PROMPT=$(sed -n '/## Persona Prompt/,$p' SKILL.md | tail -n +2)

# Verify we have a prompt
if [ -z "$PROMPT" ]; then
    echo "❌ Error: Could not extract prompt from SKILL.md"
    exit 1
fi

echo "✅ Configuration loaded"

# Upload avatar as asset to zo.space
echo "☁️ Uploading avatar to your Zo Space..."
curl -s -X POST "https://api.zo.computer/v1/assets" \
    -H "Authorization: Bearer $ZO_CLIENT_IDENTITY_TOKEN" \
    -F "file=@avatar.jpg" \
    -F "path=/persona-global-slang-mode-avatar.jpg" > /dev/null 2>&1 || true

# Create the persona via Zo API
echo "🎭 Creating Global Slang Mode persona..."
RESPONSE=$(curl -s -X POST "https://api.zo.computer/v1/personas" \
    -H "Authorization: Bearer $ZO_CLIENT_IDENTITY_TOKEN" \
    -H "Content-Type: application/json" \
    -d '{
        "name": "Global Slang Mode",
        "prompt": '"$(echo "$PROMPT" | jq -Rs .)'",
        "image": "/persona-global-slang-mode-avatar.jpg"
    }' 2>/dev/null)

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Global Slang Mode persona installed successfully!"
    echo ""
    echo "📝 To use it:"
    echo "   1. Go to Settings > AI > Personas"
    echo "   2. Click 'Global Slang Mode' to activate"
    echo "   Or say: 'switch to Global Slang Mode'"
    echo ""
else
    echo ""
    echo "⚠️  Auto-install had an issue. Manual fallback:"
    echo ""
    echo "   1. Copy the prompt from https://github.com/KaiyzerBX50/persona-global-slang-mode"
    echo "   2. Go to Settings > AI > Personas"
    echo "   3. Click 'New Persona' and paste the prompt"
    echo ""
fi

# Cleanup
cd /
rm -rf "$TEMP_DIR"
