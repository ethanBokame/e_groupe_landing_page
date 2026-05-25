<script setup lang="ts">
useHead({
  titleTemplate: '%s | Excellence Groupe'
})
</script>
<template>
  <div>
    <AppHeader />
    <slot />
    <AppFooter />
    <ScrollToTopBtn />
  </div>
</template>
