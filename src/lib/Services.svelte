<script lang="ts">
  import { onMount } from 'svelte';
  
  let servicesElement: HTMLElement;
  
  const services = [
    {
      icon: 'code',
      title: 'Full-Stack Development',
      description: 'End-to-end web applications with modern frameworks, enhanced by AI-powered code generation and optimization.',
      features: ['React, Vue, Svelte frontends', 'Node.js, Python, Java backends', 'AI-assisted development workflows']
    },
    {
      icon: 'code-quality',
      title: 'Code Quality & Architecture',
      description: 'Comprehensive code reviews, refactoring, and architecture design to improve maintainability and scalability.',
      features: ['Code reviews and refactoring', 'Architecture design patterns', 'Technical debt reduction']
    },
    {
      icon: 'cloud',
      title: 'Cloud Infrastructure',
      description: 'Multi-cloud solutions with intelligent monitoring, auto-scaling, and cost optimization strategies.',
      features: ['AWS, Azure, GCP', 'Kubernetes orchestration', 'AI-driven cost optimization']
    },
    {
      icon: 'cogs',
      title: 'DevOps Optimization',
      description: 'Streamlined CI/CD pipelines with AI-enhanced testing, monitoring, and deployment automation.',
      features: ['CI/CD pipeline design', 'Automated testing strategies', 'Performance monitoring']
    },
    {
      icon: 'brain',
      title: 'AI Integration',
      description: 'Seamlessly integrate AI capabilities into existing systems to enhance functionality and user experience.',
      features: ['LLM integration', 'ML model deployment', 'AI workflow automation']
    },
    {
      icon: 'users',
      title: 'Technical Consulting',
      description: 'Strategic guidance on architecture, technology choices, and AI adoption for your development projects.',
      features: ['Architecture design', 'Technology selection', 'AI strategy development']
    }
  ];
  
  onMount(() => {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('animate');
        }
      });
    });
    
    if (servicesElement) {
      observer.observe(servicesElement);
    }
    
    return () => observer.disconnect();
  });
</script>

<section id="services" class="services" bind:this={servicesElement}>
  <div class="container">
    <h2 class="section-title">Services</h2>
    <p class="section-subtitle">AI-enhanced solutions tailored to your needs</p>
    <div class="services-grid">
      {#each services as service, index}
        <div class="service-card" style="animation-delay: {index * 0.1}s">
          <div class="service-icon">
            {#if service.icon === 'code'}
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <polyline points="16,18 22,12 16,6"></polyline>
                <polyline points="8,6 2,12 8,18"></polyline>
              </svg>
            {:else if service.icon === 'code-quality'}
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                <polyline points="14,2 14,8 20,8"></polyline>
                <line x1="16" y1="13" x2="8" y2="13"></line>
                <line x1="16" y1="17" x2="8" y2="17"></line>
                <polyline points="10,9 9,9 8,9"></polyline>
              </svg>
            {:else if service.icon === 'cloud'}
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M18 10h-1.26A8 8 0 1 0 9 20h9a5 5 0 0 0 0-10z"></path>
              </svg>
            {:else if service.icon === 'cogs'}
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <circle cx="12" cy="12" r="3"></circle>
                <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
              </svg>
            {:else if service.icon === 'brain'}
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M9.663 17h4.673M12 3v1m6.364 1.636-.707.707M21 12h-1M4 12H3m3.343-5.657-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386L9.663 17z"></path>
              </svg>
            {:else if service.icon === 'users'}
              <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                <circle cx="9" cy="7" r="4"></circle>
                <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
              </svg>
            {/if}
          </div>
          <h3>{service.title}</h3>
          <p class="service-description">{service.description}</p>
          <ul class="service-features">
            {#each service.features as feature}
              <li>{feature}</li>
            {/each}
          </ul>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  .services {
    padding: 8rem 2rem;
    background: linear-gradient(180deg, var(--bg-primary) 0%, var(--bg-tertiary) 100%);
    position: relative;
  }

  .services::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: 
      radial-gradient(circle at 20% 30%, rgba(59, 130, 246, 0.05) 0%, transparent 50%),
      radial-gradient(circle at 80% 70%, rgba(139, 92, 246, 0.05) 0%, transparent 50%);
    pointer-events: none;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    position: relative;
    z-index: 1;
  }

  .section-title {
    font-size: 3rem;
    font-weight: 700;
    text-align: center;
    margin-bottom: 1rem;
    background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    opacity: 1;
    transform: translateY(0);
    transition: all 0.6s ease;
  }

  .section-subtitle {
    text-align: center;
    font-size: 1.25rem;
    color: var(--text-secondary);
    margin-bottom: 4rem;
    opacity: 1;
    transform: translateY(0);
    transition: all 0.6s ease 0.2s;
  }

  .services-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    gap: 2rem;
  }

  .service-card {
    background: var(--bg-card);
    border: 1px solid var(--border-color);
    border-radius: 1rem;
    padding: 2rem;
    transition: all 0.3s ease;
    backdrop-filter: blur(10px);
    opacity: 1;
    transform: translateY(0);
  }

  .service-card:hover {
    transform: translateY(-5px);
    border-color: var(--accent-primary);
    background: var(--service-card-hover);
    box-shadow: 0 10px 30px rgba(59, 130, 246, 0.1);
  }

  .service-icon {
    width: 60px;
    height: 60px;
    background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
    border-radius: 1rem;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 1.5rem;
    color: white;
  }

  .service-card h3 {
    font-size: 1.5rem;
    font-weight: 600;
    color: var(--text-primary);
    margin-bottom: 1rem;
  }

  .service-description {
    color: var(--text-secondary);
    line-height: 1.6;
    margin-bottom: 1.5rem;
  }

  .service-features {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  .service-features li {
    color: var(--text-secondary);
    padding: 0.5rem 0;
    position: relative;
    padding-left: 1.5rem;
  }

  .service-features li::before {
    content: '✓';
    position: absolute;
    left: 0;
    color: var(--accent-primary);
    font-weight: bold;
  }

  .services.animate .section-title {
    opacity: 1;
    transform: translateY(0);
  }

  .services.animate .section-subtitle {
    opacity: 1;
    transform: translateY(0);
  }

  .services.animate .service-card {
    opacity: 1;
    transform: translateY(0);
  }

  @media (max-width: 768px) {
    .services {
      padding: 4rem 1rem;
    }

    .section-title {
      font-size: 2rem;
    }

    .services-grid {
      grid-template-columns: 1fr;
      gap: 1.5rem;
    }

    .service-card {
      padding: 1.5rem;
    }
  }
</style>