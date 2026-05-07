---
name: claude-design
description: Create thoughtful, high-quality HTML design artifacts. Use when building landing pages, prototypes, decks, component explorations, motion studies, or any UI that needs visual polish and good design taste.
---

# Claude Design

Create thoughtful, high-quality design artifacts. This skill provides the design process and taste framework for building landing pages, prototypes, decks, component explorations, motion studies, and polished UI work.

## When to Use

- Landing pages, teaser pages, marketing pages
- High-fidelity interactive prototypes
- Visual option boards and variant explorations
- Component design and system exploration
- HTML slide decks and presentations
- Motion studies and animation work
- Onboarding flows and dashboard concepts
- Redesigns based on screenshots, repos, or brand assets

## Design Principle: Start From Context, Not Vibes

Good high-fidelity design does not start from scratch. Always gather source context first:

1. Brand documentation and style guides
2. Existing product screenshots and live examples
3. Current repo component implementations
4. Design tokens and theme files
5. UI kits and prior mockups
6. Copy documents and content requirements
7. Legal, product, or engineering constraints

If working in a repo, inspect actual source files before designing:
- Theme files and token definitions
- Global stylesheets and CSS variables
- Layout scaffolds and grid systems
- Component implementations (buttons, cards, forms, navigation)
- Route and page file patterns

## Workflow

1. **Understand the brief**
   - What is being designed?
   - Who is the audience?
   - What artifact should exist at the end?
   - What constraints are locked?

2. **Gather context**
   - Read supplied docs, screenshots, repo files, or design assets
   - Identify the visual vocabulary before writing code

3. **Define the design system**
   - Color palette (neutrals, surfaces, ink, accents, status colors)
   - Typography hierarchy (fonts, weights, sizes, line heights)
   - Spacing system (consistent scale)
   - Border radii and corner treatments
   - Shadows and elevation system
   - Motion posture and animation principles
   - Component style rules
   - Interaction patterns

4. **Choose the right format**
   - Static visual comparison: one HTML canvas with options side by side
   - Interaction/flow: clickable prototype with state transitions
   - Presentation: fixed-size HTML deck with slide navigation
   - Component exploration: component lab with toggleable variants
   - Motion: timeline or state-based animation

5. **Build the artifact**
   - Prefer a single self-contained HTML file
   - Embed CSS in `<style>` tags
   - Embed JavaScript in `<script>` tags
   - Keep the artifact openable directly in a browser
   - Avoid unnecessary remote dependencies

6. **Verify**
   - Confirm files exist and are complete
   - Check HTML/CSS/JS for syntax issues
   - Test in browser for console errors
   - Verify responsive behavior at key breakpoints
   - Test key interactions and state transitions

7. **Report briefly**
   - Exact file path
   - What was created
   - Caveats and assumptions
   - Next suggested iteration

## Artifact Format Rules

### Standalone Artifacts
- Use descriptive filenames: `Landing-Page.html`, `Command-Palette-Prototype.html`
- Embed CSS in `<style>` and JS in `<script>`
- Keep artifacts openable directly in browser
- Include responsive behavior unless format is intentionally fixed-size

### Revisions
- Preserve previous versions as `Name.html`, `Name-v2.html`, `Name-v3.html`
- Or keep one file with in-page toggles for variant exploration

### Repo Implementation
- Follow the repo's actual stack and conventions
- Use existing components and tokens where possible
- Don't create standalone artifacts if production code is expected

## HTML / CSS / JS Standards

Use modern CSS well:
- CSS custom properties for design tokens
- CSS Grid for layout, Flexbox for component internals
- Container queries when appropriate
- `text-wrap: pretty` for readable text
- Real focus states for accessibility
- Real hover states with appropriate cursor changes
- `prefers-reduced-motion` handling for non-trivial motion
- Responsive scaling with viewport units or container queries
- Semantic HTML where practical

Avoid:
- Fragile hard-coded viewport assumptions
- Inaccessible tiny hit targets (mobile targets minimum 44px)
- Decorative JavaScript that fights usability
- `scrollIntoView` unless there is no safer option

## Deck Rules

Default slide size: 1920×1080 (16:9)
- Keyboard navigation (arrow keys)
- Visible slide counter
- localStorage persistence for current slide
- Print-friendly layout when practical
- 1-2 background colors max unless brand requires more
- Keep slides sparse — solve emptiness with layout, rhythm, scale, not filler

## Prototype Rules

For interactive prototypes:
- Make the primary user path clickable
- Include key states: default, hover/focus, loading, empty, error, success
- Expose variations with in-page controls when useful
- Persist important state in localStorage when refresh continuity matters
- Design the complete flow, not just the first screen

## Variation Rules

When exploring, default to at least three options:
1. **Conservative** — closest to existing patterns, lowest risk
2. **Strong-fit** — best interpretation of the brief
3. **Divergent** — more novel, useful for discovering taste boundaries

Variations can explore: layout, hierarchy, type scale, density, color posture, surface treatment, motion, interaction model, copy structure, component shape.

## Anti-Slop Rules

Avoid common AI design sludge:
- Aggressive gradient backgrounds everywhere
- Glassmorphism by default
- Emoji unless the brand explicitly uses them
- Generic SaaS cards with icons on everything
- Left-border accent callout cards
- Fake dashboards filled with arbitrary numbers
- Stock-photo hero sections
- Oversized rounded rectangles as substitute for hierarchy
- Rainbow palettes with no purpose
- Vague labels like "Insights," "Growth," "Scale," "Optimize" without real content
- Decorative SVG illustrations pretending to be product imagery

## Typography

Use the existing type system if one exists. If not, choose deliberately:
- Editorial: serif or humanist headline with restrained sans body
- Software/productivity: precise sans with strong numeric treatment
- Luxury/minimal: fewer weights, more spacing discipline
- Technical: mono accents only, not mono everywhere
- Decks: large, clear, high contrast

## Color

Use brand/design-system colors first. If no palette exists:
- Define a small, intentional system
- Include neutrals, surface, ink, muted text, border, accent, and status colors if needed
- Use one primary accent unless the assignment calls for broader palette
- Check contrast for important text and controls (WCAG AA minimum)

## Layout and Composition

Design with rhythm: scale, whitespace, density, alignment, repetition, contrast, interruption.

- Avoid making every section the same card grid
- Product UIs: prioritize speed of comprehension over decoration
- Marketing: make one idea land per section
- Dashboards: avoid "data slop" — only show data that helps the user decide or act

## Motion

Use motion as discipline, not theater.

**Good motion:**
- Clarifies state changes
- Reduces anxiety during loading
- Shows continuity between surfaces
- Gives controls tactility
- Stays subtle

**Bad motion:**
- Loops without purpose
- Delays the user
- Calls attention to itself
- Hides poor hierarchy

Always respect `prefers-reduced-motion` for non-trivial animation.

## Images and Icons

Use real supplied imagery when available. If assets are missing:
- Use clean placeholders with solid colors or subtle textures
- Use typography, layout, or abstract texture instead
- Ask for real material when fidelity matters

Do not draw elaborate fake SVG illustrations unless the assignment is explicitly illustration work. Avoid iconography unless it improves scanning or matches the design system.

## Verification

Before considering work done, verify:
- File exists at the stated path
- HTML/CSS/JS is saved completely
- No obvious syntax issues
- Opens cleanly in browser with no console errors
- Key interactions work as expected
- Responsive breakpoints behave correctly
