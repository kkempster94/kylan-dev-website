<section id="about" class="about">
  <div class="container">
    <h2 class="section-title">About Me</h2>
    <div class="about-grid">
      <div class="about-text">
        <p class="about-lead">
          With 5 years at AWS and a passion for AI-driven development, I bridge the gap 
          between cutting-edge technology and practical business solutions.
        </p>
        <p>
          My expertise spans full-stack development, cloud infrastructure, and DevOps optimization. 
          I leverage AI tools and methodologies to accelerate development cycles, improve code quality, 
          and deliver innovative solutions that scale.
        </p>
        <div class="stats">
          <div class="stat">
            <span class="stat-number">5+</span>
            <span class="stat-label">Years at AWS</span>
          </div>
          <div class="stat">
            <span class="stat-number">100+</span>
            <span class="stat-label">AI-Enhanced Projects</span>
          </div>
          <div class="stat">
            <span class="stat-number">99.9%</span>
            <span class="stat-label">Uptime Achieved</span>
          </div>
        </div>
      </div>
      <div class="about-image">
        <div class="image-placeholder">
          <svg width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
            <path d="M9.663 17h4.673M12 3v1m6.364 1.636-.707.707M21 12h-1M4 12H3m3.343-5.657-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386L9.663 17z"/>
          </svg>
          <span>AI + Development</span>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .about {
    padding: 8rem 2rem;
    background: var(--bg-secondary);
    position: relative;
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
    margin-bottom: 4rem;
    color: var(--accent-primary);
    background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  .about-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 4rem;
    align-items: center;
  }

  .about-lead {
    font-size: 1.25rem;
    color: var(--text-primary);
    margin-bottom: 1.5rem;
    font-weight: 500;
  }

  .about-text p {
    color: var(--text-secondary);
    margin-bottom: 2rem;
    line-height: 1.7;
  }

  .stats {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 2rem;
    margin-top: 3rem;
  }

  .stat {
    text-align: center;
    padding: 1.5rem;
    background: var(--bg-card);
    border-radius: 1rem;
    border: 1px solid var(--border-color);
    transition: all 0.3s ease;
  }

  .stat:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 30px rgba(59, 130, 246, 0.1);
  }

  .stat-number {
    display: block;
    font-size: 2rem;
    font-weight: 700;
    color: var(--accent-primary);
    margin-bottom: 0.5rem;
  }

  .stat-label {
    color: var(--text-secondary);
    font-size: 0.9rem;
  }

  .about-image {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .image-placeholder {
    width: 300px;
    height: 300px;
    background: linear-gradient(135deg, var(--bg-tertiary), var(--bg-card));
    border-radius: 50%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border: 2px solid var(--border-color);
    color: var(--accent-primary);
    gap: 1rem;
    position: relative;
    overflow: hidden;
  }

  .image-placeholder svg {
    position: relative;
    z-index: 1;
  }

  .image-placeholder span {
    position: relative;
    z-index: 1;
    font-weight: 600;
    font-size: 1.1rem;
    color: var(--text-primary);
  }

  @media (max-width: 768px) {
    .about {
      padding: 4rem 1rem;
    }

    .section-title {
      font-size: 2rem;
      margin-bottom: 2rem;
    }

    .about-grid {
      grid-template-columns: 1fr;
      gap: 2rem;
      text-align: center;
    }

    .stats {
      grid-template-columns: 1fr;
      gap: 1rem;
    }

    .image-placeholder {
      width: 200px;
      height: 200px;
    }
  }
</style>