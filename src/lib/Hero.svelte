<script lang="ts">
  import { onMount } from 'svelte';
  
  let heroElement: HTMLElement;
  
  onMount(() => {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('animate');
        }
      });
    });
    
    if (heroElement) {
      observer.observe(heroElement);
    }
    
    return () => observer.disconnect();
  });
</script>

<section id="hero" class="hero" bind:this={heroElement}>
  <div class="hero-container">
    <div class="hero-content">
      <h1 class="hero-title">
        <span class="gradient-text">AI-Powered</span>
        <br>Full-Stack Development
      </h1>
      <p class="hero-description">
        Leveraging 5 years of AWS expertise and cutting-edge AI to build scalable, 
        intelligent solutions that drive your business forward.
      </p>
      <div class="hero-buttons">
        <a href="#contact" class="btn btn-primary">Let's Connect</a>
        <a href="https://github.com/kkempster94" target="_blank" class="btn btn-secondary">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
          </svg>
          View Work
        </a>
      </div>
    </div>
    <div class="hero-visual">
      <div class="floating-elements">
        <div class="element element-1"></div>
        <div class="element element-2"></div>
        <div class="element element-3"></div>
      </div>
    </div>
  </div>
</section>

<style>
  .hero {
    min-height: 100vh;
    display: flex;
    align-items: center;
    position: relative;
    padding: 8rem 2rem 4rem;
    background: linear-gradient(135deg, var(--bg-primary) 0%, var(--bg-tertiary) 100%);
    overflow: hidden;
  }

  .hero::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: radial-gradient(circle at 30% 20%, rgba(59, 130, 246, 0.1) 0%, transparent 50%),
                radial-gradient(circle at 70% 80%, rgba(139, 92, 246, 0.1) 0%, transparent 50%);
    pointer-events: none;
  }

  .hero-container {
    max-width: 1200px;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 4rem;
    align-items: center;
    position: relative;
    z-index: 1;
  }

  .hero-content {
    opacity: 1;
    transform: translateY(0);
    animation: fadeInUp 1s ease forwards;
  }

  .hero-title {
    font-size: clamp(2.5rem, 5vw, 4rem);
    font-weight: 700;
    line-height: 1.1;
    margin-bottom: 1.5rem;
    color: var(--text-primary);
  }

  .gradient-text {
    background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary), #ec4899);
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-size: 200% 200%;
    animation: gradientShift 3s ease-in-out infinite;
  }

  @keyframes gradientShift {
    0%, 100% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
  }

  .hero-description {
    font-size: 1.25rem;
    color: var(--text-secondary);
    margin-bottom: 2rem;
    line-height: 1.6;
  }

  .hero-buttons {
    display: flex;
    gap: 1rem;
    flex-wrap: wrap;
  }

  .btn {
    padding: 0.875rem 2rem;
    border-radius: 0.5rem;
    text-decoration: none;
    font-weight: 600;
    transition: all 0.3s ease;
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    border: none;
    cursor: pointer;
    font-size: 1rem;
  }

  .btn-primary {
    background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
    color: white;
    box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
  }

  .btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 25px rgba(59, 130, 246, 0.4);
  }

  .btn-secondary {
    background: rgba(59, 130, 246, 0.1);
    color: var(--accent-primary);
    border: 1px solid var(--border-color);
  }

  .btn-secondary:hover {
    background: rgba(59, 130, 246, 0.2);
    transform: translateY(-2px);
  }

  .hero-visual {
    position: relative;
    height: 400px;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .floating-elements {
    position: relative;
    width: 100%;
    height: 100%;
  }

  .element {
    position: absolute;
    border-radius: 50%;
    background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
    opacity: 0.6;
    animation: float 6s ease-in-out infinite;
  }

  .element-1 {
    width: 80px;
    height: 80px;
    top: 20%;
    left: 20%;
    animation-delay: 0s;
  }

  .element-2 {
    width: 120px;
    height: 120px;
    top: 60%;
    right: 20%;
    animation-delay: 2s;
  }

  .element-3 {
    width: 60px;
    height: 60px;
    bottom: 20%;
    left: 50%;
    animation-delay: 4s;
  }

  @keyframes float {
    0%, 100% { transform: translateY(0px) rotate(0deg); }
    25% { transform: translateY(-20px) rotate(90deg); }
    50% { transform: translateY(0px) rotate(180deg); }
    75% { transform: translateY(-10px) rotate(270deg); }
  }

  @keyframes fadeInUp {
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .hero.animate .hero-content {
    animation: fadeInUp 1s ease forwards;
  }

  @media (max-width: 768px) {
    .hero {
      padding: 6rem 1rem 2rem;
    }

    .hero-container {
      grid-template-columns: 1fr;
      gap: 2rem;
      text-align: center;
    }

    .hero-buttons {
      justify-content: center;
    }

    .btn {
      padding: 0.75rem 1.5rem;
      font-size: 0.9rem;
    }
  }
</style>