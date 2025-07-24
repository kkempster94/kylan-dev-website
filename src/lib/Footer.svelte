<footer class="footer">
  <div class="container">
    <div class="footer-content">
      <div class="footer-left">
        <div class="footer-logo">
          <span class="logo-text">Kylan J Kempster</span>
          <span class="logo-subtitle">AI-Driven Full-Stack Developer</span>
        </div>
        <p class="footer-description">
          Building the future with AI-enhanced development solutions.
        </p>
      </div>
      
      <div class="footer-links">
        <div class="link-group">
          <h4>Navigation</h4>
          <a href="#hero">Home</a>
          <a href="#about">About</a>
          <a href="#services">Services</a>
          <a href="#contact">Contact</a>
        </div>
        
        <div class="link-group">
          <h4>Connect</h4>
          <a href="https://linkedin.com/in/kylank" target="_blank">LinkedIn</a>
          <a href="https://github.com/kkempster94" target="_blank">GitHub</a>
          <a href="mailto:iam@kylan.dev">Email</a>
        </div>
      </div>
    </div>
    
    <div class="footer-bottom">
      <p>&copy; 2024 Kylan J Kempster. All rights reserved.</p>
      <div class="footer-social">
        <a href="https://linkedin.com/in/kylank" target="_blank" aria-label="LinkedIn">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
            <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
          </svg>
        </a>
        <a href="https://github.com/kkempster94" target="_blank" aria-label="GitHub">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
          </svg>
        </a>
      </div>
    </div>
  </div>
</footer>

<style>
  .footer {
    background: var(--bg-primary);
    border-top: 1px solid var(--border-color);
    padding: 4rem 2rem 2rem;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
  }

  .footer-content {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 4rem;
    margin-bottom: 3rem;
  }

  .footer-left {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }

  .footer-logo {
    display: flex;
    flex-direction: column;
    margin-bottom: 1rem;
  }

  .logo-text {
    font-size: 1.5rem;
    font-weight: 700;
    background: linear-gradient(135deg, var(--accent-primary), var(--accent-secondary));
    background-clip: text;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  .logo-subtitle {
    font-size: 0.9rem;
    color: var(--text-secondary);
    margin-top: 0.25rem;
  }

  .footer-description {
    color: var(--text-secondary);
    line-height: 1.6;
    max-width: 400px;
  }

  .footer-links {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 2rem;
  }

  .link-group h4 {
    color: #e4e4e7;
    font-weight: 600;
    margin-bottom: 1rem;
    font-size: 1.1rem;
  }

  .link-group {
    display: flex;
    flex-direction: column;
    gap: 0.75rem;
  }

  .link-group a {
    color: #94a3b8;
    text-decoration: none;
    transition: color 0.3s ease;
    font-size: 0.95rem;
  }

  .link-group a:hover {
    color: #3b82f6;
  }

  .footer-bottom {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding-top: 2rem;
    border-top: 1px solid rgba(59, 130, 246, 0.1);
  }

  .footer-bottom p {
    color: #6b7280;
    font-size: 0.9rem;
  }

  .footer-social {
    display: flex;
    gap: 1rem;
  }

  .footer-social a {
    width: 40px;
    height: 40px;
    background: rgba(59, 130, 246, 0.1);
    border-radius: 0.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #94a3b8;
    transition: all 0.3s ease;
  }

  .footer-social a:hover {
    background: rgba(59, 130, 246, 0.2);
    color: #3b82f6;
    transform: translateY(-2px);
  }

  @media (max-width: 768px) {
    .footer {
      padding: 3rem 1rem 1.5rem;
    }

    .footer-content {
      grid-template-columns: 1fr;
      gap: 2rem;
      margin-bottom: 2rem;
    }

    .footer-links {
      grid-template-columns: 1fr;
      gap: 1.5rem;
    }

    .footer-bottom {
      flex-direction: column;
      gap: 1rem;
      text-align: center;
    }
  }
</style>