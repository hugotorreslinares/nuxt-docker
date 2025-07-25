export default defineNuxtConfig({
  devtools: { enabled: true },
  nitro: {
    preset: 'node-server',
    devErrorHandler: true
  }
})
