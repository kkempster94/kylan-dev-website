import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'

// https://vite.dev/config/
export default defineConfig({
  plugins: [svelte({
    compilerOptions: {
      hmr: true
    }
  })],
  server: {
    hmr: {
      overlay: true
    },
    watch: {
      usePolling: true
    }
  },
  base: '/kylan-dev-website/',
  build: {
    outDir: 'dist',
    assetsDir: 'assets'
  }
})
