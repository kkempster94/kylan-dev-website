<script lang="ts">
  import { onMount } from 'svelte';
  
  let contactElement: HTMLElement;
  let form: HTMLFormElement;
  let isSubmitting = false;
  let submitMessage = '';
  
  onMount(() => {
    const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('animate');
        }
      });
    });
    
    if (contactElement) {
      observer.observe(contactElement);
    }
    
    return () => observer.disconnect();
  });

  async function handleSubmit(event: Event) {
    event.preventDefault();
    isSubmitting = true;
    
    const formData = new FormData(form);
    const name = formData.get('name') as string;
    const email = formData.get('email') as string;
    const message = formData.get('message') as string;
    
    const subject = `Website Contact: ${name}`;
    const body = `From: ${name} (${email})\n\nMessage:\n${message}`;
    const mailtoLink = `mailto:iam@kylan.dev?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;
    
    window.location.href = mailtoLink;
    
    submitMessage = 'Opening email client...';
    
    setTimeout(() => {
      isSubmitting = false;
      submitMessage = '';
      form.reset();
    }, 2000);
  }
</script>

<section id="contact" class="contact" bind:this={contactElement}>
  <div class="container">
    <h2 class="section-title">Let's Build Something Amazing</h2>
    <p class="section-subtitle">Ready to leverage AI-driven development for your next project?</p>
    
    <div class="contact-content">
      <div class="contact-info">
        <h3>Get In Touch</h3>
        <p>I'm always excited to discuss new opportunities and how AI can transform your development process.</p>
        
        <div class="contact-methods">
          <a href="mailto:iam@kylan.dev" class="contact-method">
            <div class="method-icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                <polyline points="22,6 12,13 2,6"></polyline>
              </svg>
            </div>
            <div class="method-content">
              <span class="method-title">Send me an email</span>
              <span class="method-description">iam@kylan.dev</span>
            </div>
          </a>
          
          <a href="https://linkedin.com/in/kylank" target="_blank" class="contact-method">
            <div class="method-icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
              </svg>
            </div>
            <div class="method-content">
              <span class="method-title">Connect on LinkedIn</span>
              <span class="method-description">Professional network</span>
            </div>
          </a>
          
          <a href="https://github.com/kkempster94" target="_blank" class="contact-method">
            <div class="method-icon">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
                <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
              </svg>
            </div>
            <div class="method-content">
              <span class="method-title">Check out my GitHub</span>
              <span class="method-description">View my repositories</span>
            </div>
          </a>
        </div>
      </div>
      
      <div class="contact-form-wrapper">
        <form bind:this={form} class="contact-form" on:submit={handleSubmit}>
          <h4>Quick Contact</h4>
          <div class="form-group">
            <input type="text" name="name" placeholder="Your Name" required>
          </div>
          <div class="form-group">
            <input type="email" name="email" placeholder="Your Email" required>
          </div>
          <div class="form-group">
            <textarea name="message" placeholder="Tell me about your project..." rows="4" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary" disabled={isSubmitting}>
            {#if isSubmitting}
              Sending...
            {:else}
              Send Message
            {/if}
          </button>
          {#if submitMessage}
            <p class="submit-message">{submitMessage}</p>
          {/if}
        </form>
      </div>
    </div>
  </div>
</section>

<style>
  .contact {
    padding: 8rem 2rem;
    background: var(--bg-secondary);
    position: relative;
  }

  .contact::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: 
      radial-gradient(circle at 30% 20%, rgba(59, 130, 246, 0.08) 0%, transparent 50%),
      radial-gradient(circle at 70% 80%, rgba(139, 92, 246, 0.08) 0%, transparent 50%);
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

  .contact-content {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 4rem;
    align-items: start;
  }

  .contact-info {
    opacity: 1;
    transform: translateX(0);
    transition: all 0.8s ease 0.4s;
  }

  .contact-info h3 {
    font-size: 2rem;
    font-weight: 600;
    color: var(--text-primary);
    margin-bottom: 1rem;
  }

  .contact-info p {
    color: var(--text-secondary);
    margin-bottom: 2rem;
    line-height: 1.6;
  }

  .contact-methods {
    display: flex;
    flex-direction: column;
    gap: 1rem;
  }

  .contact-method {
    display: flex;
    align-items: center;
    gap: 1rem;
    padding: 1.5rem;
    background: rgba(59, 130, 246, 0.05);
    border: 1px solid rgba(59, 130, 246, 0.1);
    border-radius: 0.75rem;
    text-decoration: none;
    color: inherit;
    transition: all 0.3s ease;
  }

  .contact-method:hover {
    background: rgba(59, 130, 246, 0.1);
    border-color: rgba(59, 130, 246, 0.2);
    transform: translateY(-2px);
  }

  .method-icon {
    width: 48px;
    height: 48px;
    background: linear-gradient(135deg, #3b82f6, #8b5cf6);
    border-radius: 0.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    flex-shrink: 0;
  }

  .method-content {
    display: flex;
    flex-direction: column;
  }

  .method-title {
    font-weight: 600;
    color: var(--text-primary);
    margin-bottom: 0.25rem;
  }

  .method-description {
    font-size: 0.9rem;
    color: var(--text-secondary);
  }

  .contact-form-wrapper {
    opacity: 1;
    transform: translateX(0);
    transition: all 0.8s ease 0.6s;
  }

  .contact-form {
    background: var(--bg-card);
    border: 1px solid var(--border-color);
    border-radius: 1rem;
    padding: 2rem;
    backdrop-filter: blur(10px);
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
  }

  .contact-form h4 {
    font-size: 1.5rem;
    font-weight: 600;
    color: var(--text-primary);
    margin-bottom: 1.5rem;
  }

  .form-group {
    margin-bottom: 1.5rem;
  }

  .form-group input,
  .form-group textarea {
    width: 100%;
    padding: 1rem;
    background: var(--bg-secondary);
    border: 1px solid var(--border-color);
    border-radius: 0.5rem;
    color: var(--text-primary);
    font-size: 1rem;
    transition: all 0.3s ease;
    font-family: inherit;
  }

  .form-group input:focus,
  .form-group textarea:focus {
    outline: none;
    border-color: var(--accent-primary);
    box-shadow: 0 0 0 2px rgba(59, 130, 246, 0.1);
  }

  .form-group input::placeholder,
  .form-group textarea::placeholder {
    color: var(--text-muted);
  }

  .form-group textarea {
    resize: vertical;
    min-height: 120px;
  }

  .btn {
    width: 100%;
    padding: 1rem 2rem;
    border-radius: 0.5rem;
    text-decoration: none;
    font-weight: 600;
    transition: all 0.3s ease;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    border: none;
    cursor: pointer;
    font-size: 1rem;
    font-family: inherit;
  }

  .btn-primary {
    background: linear-gradient(135deg, #3b82f6, #8b5cf6);
    color: white;
    box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
  }

  .btn-primary:hover:not(:disabled) {
    transform: translateY(-2px);
    box-shadow: 0 8px 25px rgba(59, 130, 246, 0.4);
  }

  .btn-primary:disabled {
    opacity: 0.6;
    cursor: not-allowed;
  }

  .submit-message {
    margin-top: 1rem;
    text-align: center;
    color: #3b82f6;
    font-weight: 500;
  }

  .contact.animate .section-title {
    opacity: 1;
    transform: translateY(0);
  }

  .contact.animate .section-subtitle {
    opacity: 1;
    transform: translateY(0);
  }

  .contact.animate .contact-info {
    opacity: 1;
    transform: translateX(0);
  }

  .contact.animate .contact-form-wrapper {
    opacity: 1;
    transform: translateX(0);
  }

  @media (max-width: 768px) {
    .contact {
      padding: 4rem 1rem;
    }

    .section-title {
      font-size: 2rem;
    }

    .contact-content {
      grid-template-columns: 1fr;
      gap: 2rem;
    }

    .contact-methods {
      gap: 0.75rem;
    }

    .contact-method {
      padding: 1rem;
    }

    .method-icon {
      width: 40px;
      height: 40px;
    }

    .contact-form {
      padding: 1.5rem;
    }
  }
</style>