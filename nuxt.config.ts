// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  modules: [
    '@nuxt/image',
    '@nuxtjs/tailwindcss',
    '@nuxt/icon',
    'nuxt-swiper',
    'nuxt-aos'
  ],
  aos: {
    duration: 1300, // values from 0 to 3000, with step 50ms
    once: true
  }
})