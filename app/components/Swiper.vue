<script setup lang="ts">
// Create 10 slides
const containerRef = ref(null)
const slides = ref([
  'pic_1.jpg',
  'pic_2.jpg',
])

const swiper = useSwiper(containerRef, {
  loop: true,
  autoplay: {
    delay: 8000,
  },
})

onMounted(() => {
  // Access Swiper instance
  // Read more about Swiper instance: https://swiperjs.com/swiper-api#methods--properties
  console.log(swiper.instance)
})
</script>

<template>
  <ClientOnly>
    <swiper-container ref="containerRef" :init="false">
      <swiper-slide v-for="i in 7" :key="i" class="relative overflow-hidden">
        <!-- background blur -->
        <div class="absolute inset-0" :style="{
          backgroundImage: `url(/pic_${i}.jpeg)`,
          backgroundPosition: 'center',
          backgroundSize: 'cover',
          filter: 'blur(20px)',
          transform: 'scale(1.1)'
        }"></div>

        <div class="z-10 absolute inset-0 flex items-center justify-between max-w-[100vw]">
          <!-- Go back one slide -->
          <button @click="swiper.prev()">
            <Icon name="solar:alt-arrow-left-line-duotone" class="text-white h-10 w-10"></Icon>
          </button>

          <!-- Go forward one slide -->
          <button @click="swiper.next()">
            <Icon name="solar:alt-arrow-right-line-duotone" class="text-white h-10 w-10"></Icon>
          </button>
        </div>

        <!-- img -->
        <NuxtImg :src="`/pic_${i}.jpeg`" class="z-10 h-[490px]" />
      </swiper-slide>
    </swiper-container>
  </ClientOnly>
</template>

<style lang="css">
swiper-slide {
  display: flex;
  justify-content: center;
  align-items: center;
  height: auto;
}
</style>
