# string

**String** is an interactive string theory instrument. It renders the shapes of string theory with WebGL shaders and lets you play with them like a synth.

## Scenes

1. **Closed string**: a vibrating loop built from left- and right-moving waves. Raise *Time spread* to lay its history out as a worldsheet.
2. **Interactions**: the pants diagram (one string splitting into two, or two joining) and the one-loop torus.
3. **Calabi–Yau**: Hanson's projection of z₁ⁿ + z₂ⁿ = 1, rotating through its hidden fourth dimension.

## Features

- Harmonics equalizer: drag the 8 bars to set each vibration mode. Each bar plays its overtone as a plucked string.
- Surface styles: Silk, Film (iridescent), Grid (worldsheet coordinates) and Plasma.
- Palettes, bloom, aberration, grain, vignette, pixelation and dithering.
- Light and dark mode, with synthesized interface sounds (mute with **M**).
- Adaptive resolution that keeps the frame rate smooth on slower machines.
- PNG export in three sizes: **Screen**, **4K**, or **Max**, the largest your GPU can render safely (about 6000 px wide on a laptop). Bloom, grain and grid lines are scaled so the file matches what you see on screen.
- 6-second video recording, saved presets and settings as JSON.

## Shortcuts

| Key | Action |
| --- | --- |
| ← → | Previous / next preset |
| 1–3 | Switch scene |
| R | Randomize |
| P | Pause |
| E | Export image |
| V | Record 6 seconds |
| X | Reset view |
| T | Toggle theme |
| M | Toggle sound |
| F | Focus mode: hide all controls (Esc to exit) |
| H | Show / hide panel |

## Run locally

It is a single static page with no build step. Serve the folder with any static server:

```bash
python3 -m http.server 5199
```

Then open http://localhost:5199.

## Deploy

Import the repository in Vercel and choose the **Other** framework preset. There is no build command, and the output directory is the repository root.

After the first deploy, change the two `og:image` / `twitter:image` tags in `index.html` from `/og.jpg` to the full URL (for example `https://your-domain.vercel.app/og.jpg`). Slack, Discord and iMessage read the relative path, but X and LinkedIn need the full URL to show the preview card.

## Brand files

| File | Use |
| --- | --- |
| `favicon.svg`, `favicon.ico` | Browser tab icon |
| `apple-touch-icon.png` | iOS home screen |
| `site.webmanifest`, `icons/icon-*.png` | Install as an app (Android, desktop Chrome) |
| `og.jpg` | 1200×630 link preview |
| `icons/mark.svg` | The String mark without its background tile |

The mark is an open string stretched between two D-branes, vibrating in its second harmonic, with its endpoints fixed on the branes. It is drawn in the Planck palette.

Built with [three.js](https://threejs.org) r160. The app loads a minified bundle of only the parts it uses from `vendor/three.string.min.js` (one same-origin file, about 125 KB gzipped). To rebuild it after changing `tools/three-entry.js`, run `tools/build-vendor.sh`.

---

Made by [Kanishk Singh](https://www.linkedin.com/in/kanishk-singh-728126211/).
