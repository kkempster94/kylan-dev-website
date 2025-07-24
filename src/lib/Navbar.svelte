<script lang="ts">
  let isMenuOpen = false;

  function toggleMenu() {
    isMenuOpen = !isMenuOpen;
  }

  function closeMenu() {
    isMenuOpen = false;
  }
</script>

<nav class="navbar">
  <div class="nav-container">
    <div class="nav-logo">
      <span class="logo-text">Kylan J Kempster</span>
      <span class="logo-subtitle">AI-Driven Developer</span>
    </div>
    
    <ul class="nav-menu" class:active={isMenuOpen}>
      <li><a href="#hero" class="nav-link" on:click={closeMenu}>Home</a></li>
      <li><a href="#about" class="nav-link" on:click={closeMenu}>About</a></li>
      <li><a href="#services" class="nav-link" on:click={closeMenu}>Services</a></li>
      <li><a href="#contact" class="nav-link" on:click={closeMenu}>Contact</a></li>
    </ul>
    
    <button class="hamburger" class:active={isMenuOpen} on:click={toggleMenu}>
      <span class="bar"></span>
      <span class="bar"></span>
      <span class="bar"></span>
    </button>
  </div>
</nav>

<style>
  .navbar {
    position: fixed;
    top: 0;
    width: 100%;
    background: var(--bg-secondary, rgba(10, 10, 15, 0.95));
    backdrop-filter: blur(10px);
    border-bottom: 1px solid var(--border-color, rgba(59, 130, 246, 0.1));
    z-index: 1000;
    transition: all 0.3s ease;
  }

  .nav-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 1rem 2rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .nav-logo {
    display: flex;
    flex-direction: column;
  }

  .logo-text {
    font-size: 1.25rem;
    font-weight: 700;
    color: var(--text-primary, #e4e4e7);
    background: linear-gradient(135deg, var(--accent-primary, #3b82f6), var(--accent-secondary, #8b5cf6));
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  .logo-subtitle {
    font-size: 0.75rem;
    color: var(--text-secondary, #94a3b8);
    font-weight: 400;
  }

  .nav-menu {
    display: flex;
    list-style: none;
    gap: 2rem;
    margin: 0;
    padding: 0;
  }

  .nav-link {
    color: var(--text-primary, #e4e4e7);
    text-decoration: none;
    font-weight: 500;
    transition: all 0.3s ease;
    position: relative;
  }

  .nav-link:hover {
    color: var(--accent-primary, #3b82f6);
  }

  .nav-link::after {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 0;
    height: 2px;
    background: linear-gradient(135deg, #3b82f6, #8b5cf6);
    transition: width 0.3s ease;
  }

  .nav-link:hover::after {
    width: 100%;
  }

  .hamburger {
    display: none;
    flex-direction: column;
    cursor: pointer;
    background: none;
    border: none;
    padding: 0.5rem;
    gap: 0.25rem;
  }

  .bar {
    width: 25px;
    height: 3px;
    background: #e4e4e7;
    transition: all 0.3s ease;
    border-radius: 2px;
  }

  .hamburger.active .bar:nth-child(1) {
    transform: rotate(45deg) translate(6px, 6px);
  }

  .hamburger.active .bar:nth-child(2) {
    opacity: 0;
  }

  .hamburger.active .bar:nth-child(3) {
    transform: rotate(-45deg) translate(6px, -6px);
  }

  @media (max-width: 768px) {
    .hamburger {
      display: flex;
    }

    .nav-menu {
      position: fixed;
      left: -100%;
      top: 70px;
      flex-direction: column;
      background: rgba(10, 10, 15, 0.98);
      width: 100%;
      text-align: center;
      transition: 0.3s;
      backdrop-filter: blur(10px);
      border-top: 1px solid rgba(59, 130, 246, 0.1);
      padding: 2rem 0;
    }

    .nav-menu.active {
      left: 0;
    }

    .nav-menu li {
      margin: 1rem 0;
    }
  }
</style>