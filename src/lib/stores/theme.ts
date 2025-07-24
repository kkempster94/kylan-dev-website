import { writable } from 'svelte/store';

export type Theme = 'dark' | 'light' | 'rainbow';

// Get initial theme from localStorage or default to dark
const getInitialTheme = (): Theme => {
  if (typeof window === 'undefined') return 'dark';
  const saved = localStorage.getItem('theme') as Theme;
  return saved || 'dark';
};

export const theme = writable<Theme>(getInitialTheme());

// Apply theme to document
const applyTheme = (themeName: Theme) => {
  if (typeof window === 'undefined') return;
  
  // Remove existing theme classes
  document.documentElement.classList.remove('dark', 'light', 'rainbow');
  
  // Add current theme class
  document.documentElement.classList.add(themeName);
  
  console.log('Theme applied:', themeName); // Debug log
};

// Initialize theme on first load
if (typeof window !== 'undefined') {
  applyTheme(getInitialTheme());
}

// Update localStorage and apply theme when store changes
theme.subscribe((value) => {
  if (typeof window === 'undefined') return;
  
  localStorage.setItem('theme', value);
  applyTheme(value);
});

export const setTheme = (newTheme: Theme) => {
  console.log('Setting theme to:', newTheme); // Debug log
  theme.set(newTheme);
};