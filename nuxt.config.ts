export default defineNuxtConfig({
  devtools: { enabled: true },
  nitro: {
    preset: 'vercel',
    devErrorHandler: true
  }
})
