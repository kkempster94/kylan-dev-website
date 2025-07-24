<script lang="ts">
  import Navbar from './lib/Navbar.svelte'
  import Hero from './lib/Hero.svelte'
  import About from './lib/About.svelte'
  import Services from './lib/Services.svelte'
  import Contact from './lib/Contact.svelte'
  import Footer from './lib/Footer.svelte'
  import ThemeSelector from './lib/ThemeSelector.svelte'
</script>

<Navbar />
<main>
  <Hero />
  <About />
  <Services />
  <Contact />
</main>
<Footer />
<ThemeSelector />

<style>
  :global(*) {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  :global(html) {
    scroll-behavior: smooth;
  }

  /* Dark theme (default) */
  :global(html.dark) {
    --bg-primary: #0a0a0f;
    --bg-secondary: #0f0f1a;
    --bg-tertiary: #1a1a2e;
    --bg-card: #111;
    --text-primary: #e4e4e7;
    --text-secondary: #94a3b8;
    --text-muted: #6b7280;
    --accent-primary: #3b82f6;
    --accent-secondary: #8b5cf6;
    --border-color: rgba(59, 130, 246, 0.1);
    --service-card-hover: rgba(15, 15, 26, 0.9);
  }

  /* Light theme */
  :global(html.light) {
    --bg-primary: #ffffff;
    --bg-secondary: #f8fafc;
    --bg-tertiary: #f1f5f9;
    --bg-card: #ffffff;
    --text-primary: #1e293b;
    --text-secondary: #475569;
    --text-muted: #64748b;
    --accent-primary: #2563eb;
    --accent-secondary: #7c3aed;
    --border-color: rgba(59, 130, 246, 0.2);
    --service-card-hover: #f8fafc;
  }

  /* Rainbow theme */
  :global(html.rainbow) {
    --bg-primary: #000;
    --bg-secondary: #111;
    --bg-tertiary: #222;
    --bg-card: #333;
    --text-primary: #fff;
    --text-secondary: #ccc;
    --text-muted: #999;
    --accent-primary: hsl(var(--rainbow-hue, 0), 70%, 60%);
    --accent-secondary: hsl(calc(var(--rainbow-hue, 0) + 60), 70%, 60%);
    --border-color: hsla(var(--rainbow-hue, 0), 70%, 60%, 0.3);
    --service-card-hover: #444;
    animation: rainbow-cycle 10s linear infinite;
  }

  @keyframes rainbow-cycle {
    0% { --rainbow-hue: 0; }
    16.66% { --rainbow-hue: 60; }
    33.33% { --rainbow-hue: 120; }
    50% { --rainbow-hue: 180; }
    66.66% { --rainbow-hue: 240; }
    83.33% { --rainbow-hue: 300; }
    100% { --rainbow-hue: 360; }
  }

  :global(body) {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    background: var(--bg-primary);
    color: var(--text-primary);
    line-height: 1.6;
    overflow-x: hidden;
    transition: background-color 0.3s ease, color 0.3s ease;
  }

  :global(::selection) {
    background: var(--accent-primary);
    color: white;
  }

  main {
    position: relative;
  }
</style>