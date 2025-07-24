<script lang="ts">
  import Navbar from './lib/Navbar.svelte'
  import Hero from './lib/Hero.svelte'
  import About from './lib/About.svelte'
  import Services from './lib/Services.svelte'
  import Contact from './lib/Contact.svelte'
  import Footer from './lib/Footer.svelte'
</script>

<Navbar />
<main>
  <Hero />
  <About />
  <Services />
  <Contact />
</main>
<Footer />

<style>
  :global(*) {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  :global(html) {
    scroll-behavior: smooth;
  }

  :global(body) {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    background: #0a0a0f;
    color: #e4e4e7;
    line-height: 1.6;
    overflow-x: hidden;
  }

  :global(::selection) {
    background: #3b82f6;
    color: white;
  }

  main {
    position: relative;
  }
</style>