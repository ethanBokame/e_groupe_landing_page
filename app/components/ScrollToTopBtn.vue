<script lang=ts>
export default {
  data() {
    return {
      isVisible: false
    }
  },
  mounted() {
    this.setIsVisible()
  },
  methods: {
    setIsVisible() {
      window.addEventListener('scroll', () => {
        this.isVisible = window.scrollY > 1
      });
    },
  }
}
</script>
<template>
  <button 
    class="fixed bottom-4 right-4 bg-yellow-500 h-10 w-10 flex items-center justify-center shadow-md rounded-full"
    v-if="isVisible"
    @click="scrollToTop"
  >
    <Icon name="solar:arrow-up-linear" class="text-white h-5 w-5" />
  </button>
</template>