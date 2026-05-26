<script setup lang="ts">
useHead({
  titleTemplate: '%s | Excellence Groupe'
})
</script>
<template>
  <div :style="{fontFamily: 'Inter, sans-serif'}">
    <AppHeader />
    <slot />
    <AppFooter />
    <ScrollToTopBtn />
  </div>
</template>
