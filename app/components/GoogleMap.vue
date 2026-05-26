<script lang="ts">
export default {
  setup() {
    useHead({
      link: [
        { rel: 'icon', type: 'image/png', href: '/logo.png' },
        { rel: 'dns-prefetch', href: '//www.google.com' },
        { rel: 'preconnect', href: 'https://www.google.com', crossorigin: '' }      
      ]
    })
  },
  props: {
    link: {
      type: String,
      required: true
    }
  }
}
</script>

<template>
  <iframe height="300" width="100%" :src="link" style="border:0; margin-top: 15px; margin-bottom: 15px;"
    referrerpolicy="no-referrer-when-downgrade">
  </iframe>
</template>