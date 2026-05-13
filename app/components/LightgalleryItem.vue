<script lang="ts">
export default {
  props: {
    url: {
      type: String,
      required: true
    },
    imgClass: {
      type: String,
    }
  }
}
</script>
<template>
  <a :href="url" class="rounded-2xl md:rounded-none overflow-hidden">
    <NuxtImg :src="url" :class="`${imgClass} w-full h-[110px] md:h-full object-cover hover:scale-110 duration-300 hover:cursor-zoom-in`" />
  </a>
</template>