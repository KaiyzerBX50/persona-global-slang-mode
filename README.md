# 🌍 Global Slang Mode

> **Understand Any Slang, Anywhere.** No cap. No gatekeeping. Just clear, culturally respectful explanations for every slang — regional, internet, generational, niche.

**Created by:** DaGreatGawdNYC

---

## What's Inside

- **🎭 Persona** — A Zo Computer persona that turns Zo into a slang interpreter with 4 response modes (Interpret, Disambiguate, Safety Filter, Inject)
- **📖 296-Term Dictionary** — Curated slang spanning the 1920s through the 2020s, covering Internet, AAVE, Gen Z, Gen Alpha, Hip-Hop, UK, Gaming, K-Pop, Korean, LGBTQ+, Latin American, Australian, and Vintage slang
- **🔌 Installable** — One-command install into any Zo Computer

### Decades Covered

| Decade | Examples |
|--------|----------|
| 1920s | Bee's knees, cat's meow, ritzy |
| 1930s | Gig, in the groove |
| 1940s | Cool, hip, square |
| 1950s | Daddy-o, dig, pad |
| 1960s | Far out, groovy, psychedelic |
| 1970s | Boogie, funky, right on |
| 1980s | Gnarly, rad, totally |
| 1990s | All that, da bomb, phat |
| 2000s | Bling, crunk, ghost |
| 2010s | Bae, fam, slay |
| 2020s | Bussin, rizz, skibidi |

---

## Install (One Command)

```bash
curl -fsSL https://raw.githubusercontent.com/KaiyzerBX50/persona-global-slang-mode/main/install.sh | bash
```

That's it. The script will:
- Download the avatar
- Create the persona in your Zo Space
- Set everything up automatically

Then go to **Settings > AI > Personas** and click "Global Slang Mode" to activate.

---

## Manual Install

1. Copy the full prompt from `SKILL.md`
2. Go to **Settings > AI > Personas** in your Zo Space
3. Click "New Persona"
4. Paste the prompt
5. Upload `assets/avatar.png` as the avatar
6. Save and switch to it

---

## Using the Dictionary

The file `assets/slang-dictionary.json` contains 296 curated, family-friendly slang entries. Each entry includes:

```json
{
  "term": "rizz",
  "meanings": [
    {
      "meaning": "Charisma, especially romantic charm or the ability to attract someone",
      "context": "Coined/popularized by Kai Cenat and NYC streaming culture ~2022. Oxford word of the year 2023",
      "tone": "Playful, complimentary"
    }
  ],
  "categories": ["internet", "genz"],
  "decade": "2020s"
}
```

---

## What It Does

When you ask Zo to explain slang with this persona active:

- **Explains meaning** in plain English
- **Provides context** (where it comes from, who uses it)
- **Handles ambiguity** with multiple meanings when needed
- **Filters harmful language** safely without lecturing
- **Keeps it readable** — no forced slang or over-complicated responses

---

## Example Interactions

**User:** "What does 'no cap' mean?"

**Zo:**
- **Meaning:** "No lie" or "I'm being honest"
- **Context:** AAVE (African American Vernacular English), widely used on social media
- **Tone:** Casual, friendly

**User:** "Explain 'rizz'"

**Zo:**
- **Meaning:** Charisma or charm, especially romantic appeal
- **Context:** Internet slang that went mainstream in 2022
- **Tone:** Playful, trendy

**User:** "What did 'groovy' mean in the 60s?"

**Zo:**
- **Meaning:** Excellent, wonderful, fashionable — the ultimate approval word of the 1960s
- **Context:** 1960s counterculture and hippie movement, from jazz slang "in the groove"
- **Tone:** Enthusiastic, positive

---

## Credits

- **Author:** DaGreatGawdNYC
- **Built on:** [Zo Computer](https://zocomputer.com)
- **Version:** 1.0.0

---

## License

MIT — Share freely, keep the attribution.
