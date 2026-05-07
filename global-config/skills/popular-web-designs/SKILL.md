---
name: popular-web-designs
description: 54 real-world design systems ready for use. Access exact color palettes, typography hierarchies, component styles, and CSS values from sites like Stripe, Linear, Vercel, Notion, and more. Use when the user wants a page styled like a known brand.
---

# Popular Web Designs

54 real-world design systems ready for use when generating HTML/CSS. Each template captures a site's complete visual language: color palette, typography hierarchy, component styles, spacing system, shadows, responsive behavior, and practical implementation notes with exact CSS values.

## Related Skills

- **claude-design** — use for the design process and taste (scoping a brief, producing variants, verifying local HTML artifacts). Pair it with this skill when the user wants a thoughtfully-designed page styled after a known brand: `claude-design` drives the workflow, this skill supplies the visual vocabulary.
- **design-md** — use when the deliverable is a formal DESIGN.md token spec file, not a rendered artifact.

## How to Use

1. Pick a design from the catalog below
2. Load the template by looking up its design system values
3. Use the design tokens and component specs when generating HTML

Each template includes:
- Google Fonts `<link>` tag (ready to paste)
- CSS font-family stacks for primary and monospace
- Complete CSS custom properties for colors
- Typography scale with exact sizes, weights, line heights
- Component styling rules (buttons, cards, inputs, navigation)
- Layout grid and spacing system
- Shadow and elevation values

## HTML Generation Pattern

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Page Title</title>
  <!-- Paste the Google Fonts <link> -->
  <link href="https://fonts.googleapis.com/css2?family=..." rel="stylesheet">
  <style>
    /* Apply design tokens as CSS custom properties */
    :root {
      --color-bg: #ffffff;
      --color-text: #171717;
      --color-accent: #533afd;
      /* ... more tokens */
    }
    /* Apply typography */
    body {
      font-family: 'Inter', system-ui, sans-serif;
      color: var(--color-text);
      background: var(--color-bg);
    }
    /* Apply component styles, layout, shadows */
  </style>
</head>
<body>
  <!-- Build using component specs -->
</body>
</html>
```

## Font Substitution Reference

Most sites use proprietary fonts unavailable via CDN. Use these Google Fonts substitutes that preserve the design's character:

| Proprietary Font | CDN Substitute | Character |
|---|---|---|
| Geist / Geist Sans | Geist | Geometric, compressed tracking |
| Geist Mono | Geist Mono | Clean monospace, ligatures |
| sohne-var (Stripe) | Source Sans 3 | Light weight elegance |
| Berkeley Mono | JetBrains Mono | Technical monospace |
| Airbnb Cereal VF | DM Sans | Rounded, friendly geometric |
| Circular (Spotify) | DM Sans | Geometric, warm |
| figmaSans | Inter | Clean humanist |
| Pin Sans (Pinterest) | DM Sans | Friendly, rounded |
| NVIDIA-EMEA | Inter (or Arial system) | Industrial, clean |
| CoinbaseDisplay/Sans | DM Sans | Geometric, trustworthy |
| UberMove | DM Sans | Bold, tight |
| HashiCorp Sans | Inter | Enterprise, neutral |
| waldenburgNormal (Sanity) | Space Grotesk | Geometric, slightly condensed |
| IBM Plex Sans/Mono | IBM Plex Sans/Mono | Available on Google Fonts |
| Rubik (Sentry) | Rubik | Available on Google Fonts |

When a template's CDN font matches the original (Inter, IBM Plex, Rubik, Geist), no substitution loss occurs. When a substitute is used (DM Sans for Circular, Source Sans 3 for sohne-var), follow the template's weight, size, and letter-spacing values closely — those carry more visual identity than the specific font face.

## Design Catalog

### AI & Machine Learning

| Template | Site | Style |
|---|---|---|
| claude | Anthropic Claude | Warm terracotta accent, clean editorial layout |
| cohere | Cohere | Vibrant gradients, data-rich dashboard aesthetic |
| elevenlabs | ElevenLabs | Dark cinematic UI, audio-waveform aesthetics |
| minimax | Minimax | Bold dark interface with neon accents |
| mistral.ai | Mistral AI | French-engineered minimalism, purple-toned |
| ollama | Ollama | Terminal-first, monochrome simplicity |
| opencode.ai | OpenCode AI | Developer-centric dark theme, full monospace |
| replicate | Replicate | Clean white canvas, code-forward |
| runwayml | RunwayML | Cinematic dark UI, media-rich layout |
| together.ai | Together AI | Technical, blueprint-style design |
| voltagent | VoltAgent | Void-black canvas, emerald accent, terminal-native |
| x.ai | xAI | Stark monochrome, futuristic minimalism, full monospace |

### Developer Tools & Platforms

| Template | Site | Style |
|---|---|---|
| cursor | Cursor | Sleek dark interface, gradient accents |
| expo | Expo | Dark theme, tight letter-spacing, code-centric |
| linear.app | Linear | Ultra-minimal dark-mode, precise, purple accent |
| lovable | Lovable | Playful gradients, friendly dev aesthetic |
| mintlify | Mintlify | Clean, green-accented, reading-optimized |
| posthog | PostHog | Playful branding, developer-friendly dark UI |
| raycast | Raycast | Sleek dark chrome, vibrant gradient accents |
| resend | Resend | Minimal dark theme, monospace accents |
| sentry | Sentry | Dark dashboard, data-dense, pink-purple accent |
| supabase | Supabase | Dark emerald theme, code-first developer tool |
| superhuman | Superhuman | Premium dark UI, keyboard-first, purple glow |
| vercel | Vercel | Black and white precision, Geist font system |
| warp | Warp | Dark IDE-like interface, block-based command UI |
| zapier | Zapier | Warm orange, friendly illustration-driven |

### Infrastructure & Cloud

| Template | Site | Style |
|---|---|---|
| clickhouse | ClickHouse | Yellow-accented, technical documentation style |
| composio | Composio | Modern dark with colorful integration icons |
| hashicorp | HashiCorp | Enterprise-clean, black and white |
| mongodb | MongoDB | Green leaf branding, developer documentation focus |
| sanity | Sanity | Red accent, content-first editorial layout |
| stripe | Stripe | Signature purple gradients, weight-300 elegance |

### Design & Productivity

| Template | Site | Style |
|---|---|---|
| airtable | Airtable | Colorful, friendly, structured data aesthetic |
| cal.com | Cal.com | Clean neutral UI, developer-oriented simplicity |
| clay | Clay | Organic shapes, soft gradients, art-directed layout |
| figma | Figma | Vibrant multi-color, playful yet professional |
| framer | Framer | Bold black and blue, motion-first, design-forward |
| intercom | Intercom | Friendly blue palette, conversational UI patterns |
| miro | Miro | Bright yellow accent, infinite canvas aesthetic |
| notion | Notion | Warm minimalism, serif headings, soft surfaces |
| pinterest | Pinterest | Red accent, masonry grid, image-first layout |
| webflow | Webflow | Blue-accented, polished marketing site aesthetic |

### Fintech & Crypto

| Template | Site | Style |
|---|---|---|
| coinbase | Coinbase | Clean blue identity, trust-focused, institutional feel |
| kraken | Kraken | Purple-accented dark UI, data-dense dashboards |
| revolut | Revolut | Sleek dark interface, gradient cards, fintech precision |
| wise | Wise | Bright green accent, friendly and clear |

### Enterprise & Consumer

| Template | Site | Style |
|---|---|---|
| airbnb | Airbnb | Warm coral accent, photography-driven, rounded UI |
| apple | Apple | Premium white space, SF Pro, cinematic imagery |
| bmw | BMW | Dark premium surfaces, precise engineering aesthetic |
| ibm | IBM | Carbon design system, structured blue palette |
| nvidia | NVIDIA | Green-black energy, technical power aesthetic |
| spacex | SpaceX | Stark black and white, full-bleed imagery, futuristic |
| spotify | Spotify | Vibrant green on dark, bold type, album-art-driven |
| uber | Uber | Bold black and white, tight type, urban energy |

## Choosing a Design

Match the design to the content:

- **Developer tools / dashboards:** Linear, Vercel, Supabase, Raycast, Sentry
- **Documentation / content sites:** Mintlify, Notion, Sanity, MongoDB
- **Marketing / landing pages:** Stripe, Framer, Apple, SpaceX
- **Dark mode UIs:** Linear, Cursor, ElevenLabs, Warp, Superhuman
- **Light / clean UIs:** Vercel, Stripe, Notion, Cal.com, Replicate
- **Playful / friendly:** PostHog, Figma, Lovable, Zapier, Miro
- **Premium / luxury:** Apple, BMW, Stripe, Superhuman, Revolut
- **Data-dense / dashboards:** Sentry, Kraken, Cohere, ClickHouse
- **Monospace / terminal aesthetic:** Ollama, OpenCode, x.ai, VoltAgent
