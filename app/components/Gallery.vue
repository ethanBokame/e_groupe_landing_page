<script lang="ts">
import Lightgallery from 'lightgallery/vue';
import lgThumbnail from 'lightgallery/plugins/thumbnail';
import lgZoom from 'lightgallery/plugins/zoom';

export default {
  components: {
    Lightgallery,
  },
  data() {
    return {
      plugins: [lgThumbnail, lgZoom],
    }
  },
  methods: {
    onInit() {
      console.log('lightGallery has been initialized');
    },
    onBeforeSlide() {
      console.log('calling before slide');
    },
  },
}
</script>

<template>
  <lightgallery :settings="{ speed: 500, plugins: plugins }" :onInit="onInit" :onBeforeSlide="onBeforeSlide"
    class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 auto-rows-[170px] gap-1.5 py-12">
    <a href="/pic_1.jpeg" class="lg:col-span-2 lg:row-span-2">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="lg:row-span-2">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block lg:col-span-2">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block lg:col-span-2 lg:row-span-2">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block lg:row-span-2">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
    <a href="/pic_1.jpeg" class="hidden lg:block">
      <NuxtImg src="/pic_1.jpeg" class="rounded-sm w-full h-full object-cover" />
    </a>
  </lightgallery>
</template>

<style>
@import 'lightgallery/css/lightgallery.css';
@import 'lightgallery/css/lg-thumbnail.css';
@import 'lightgallery/css/lg-zoom.css';
</style>
