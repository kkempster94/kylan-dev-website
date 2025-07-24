<script lang="ts">
  import { onMount } from 'svelte';
  import { theme, setTheme, type Theme } from './stores/theme';

  const themes: Array<{value: Theme, label: string, icon: string}> = [
    { value: 'dark', label: 'Dark', icon: '🌙' },
    { value: 'light', label: 'Light', icon: '☀️' },
    { value: 'rainbow', label: 'Rainbow', icon: '🌈' }
  ];

  function handleThemeChange(newTheme: Theme) {
    console.log('Button clicked, changing theme to:', newTheme);
    setTheme(newTheme);
  }

  onMount(() => {
    // Force apply current theme on mount
    const currentTheme = $theme;
    console.log('Component mounted, current theme:', currentTheme);
    
    // Ensure the theme class is applied
    document.documentElement.classList.remove('dark', 'light', 'rainbow');
    document.documentElement.classList.add(currentTheme);
  });
</script>

<div class="theme-selector">
  <div class="theme-options">
    {#each themes as themeOption}
      <button 
        class="theme-button" 
        class:active={$theme === themeOption.value}
        on:click={() => handleThemeChange(themeOption.value)}
        title={`Switch to ${themeOption.label} mode`}
      >
        <span class="theme-icon">{themeOption.icon}</span>
        <span class="theme-label">{themeOption.label}</span>
      </button>
    {/each}
  </div>
</div>

<style>
  .theme-selector {
    position: fixed;
    top: 6rem;
    right: 1.5rem;
    z-index: 1001;
  }

  .theme-options {
    display: flex;
    flex-direction: column;
    gap: 0.25rem;
    background: rgba(15, 15, 26, 0.95);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(59, 130, 246, 0.2);
    border-radius: 0.75rem;
    padding: 0.5rem;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
  }

  .theme-button {
    display: flex;
    align-items: center;
    gap: 0.375rem;
    padding: 0.5rem 0.75rem;
    background: transparent;
    border: 1px solid rgba(59, 130, 246, 0.2);
    border-radius: 0.375rem;
    color: #e4e4e7;
    cursor: pointer;
    transition: all 0.3s ease;
    font-size: 0.75rem;
    font-weight: 500;
    min-width: 80px;
  }

  .theme-button:hover {
    background: rgba(59, 130, 246, 0.1);
    border-color: rgba(59, 130, 246, 0.4);
    transform: translateX(-2px);
  }

  .theme-button.active {
    background: linear-gradient(135deg, #3b82f6, #8b5cf6);
    border-color: transparent;
    color: white;
    box-shadow: 0 4px 15px rgba(59, 130, 246, 0.3);
  }

  .theme-icon {
    font-size: 1rem;
  }

  .theme-label {
    font-family: 'Inter', sans-serif;
  }

  @media (max-width: 768px) {
    .theme-selector {
      position: fixed;
      top: auto;
      bottom: 2rem;
      right: 2rem;
      transform: none;
    }

    .theme-options {
      flex-direction: row;
      padding: 0.75rem;
    }

    .theme-button {
      min-width: auto;
      padding: 0.5rem;
    }

    .theme-label {
      display: none;
    }
  }
</style>