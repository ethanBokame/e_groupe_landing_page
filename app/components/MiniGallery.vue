<script lang="ts">
import Lightgallery from 'lightgallery/vue';
import lgThumbnail from 'lightgallery/plugins/thumbnail';
import lgZoom from 'lightgallery/plugins/zoom';
import { minigalleryData } from '~/data/minigallery.data';

export default {
  components: {
    Lightgallery,
  },
  data() {
    return {
      plugins: [lgThumbnail, lgZoom],
      pics: minigalleryData
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
    class="grid grid-cols-3 md:grid-cols-4 md:grid-rows-8 gap-1.5 md:gap-3 md:h-[480px] py-12">
    <!-- Col 1 -->
    <LightgalleryItem :url="pics[0] || ''" class="md:col-start-1 md:row-start-1 md:row-span-3" imgClass="object-top" data-aos="fade-up" :data-aos-delay="1 * 150" />
    <LightgalleryItem :url="pics[1] || ''" class="col-span-2 md:col-span-1 md:col-start-1 md:row-start-4 md:row-span-5" imgClass="object-top" data-aos="fade-up" :data-aos-delay="2 * 150" />

    <!-- Col 2 -->
    <LightgalleryItem :url="pics[2] || ''" class="col-span-2 md:col-span-1 md:col-start-2 md:row-start-1 md:row-span-5" data-aos="fade-up" :data-aos-delay="3 * 150" />
    <LightgalleryItem :url="pics[3] || ''" class="md:col-start-2 md:row-start-6 md:row-span-3" data-aos="fade-up" :data-aos-delay="4 * 150" />

    <!-- Col 3 -->
    <LightgalleryItem :url="pics[4] || ''" class="md:col-start-3 md:row-start-1 md:row-span-3" data-aos="fade-up" imgClass="object-top" :data-aos-delay="5 * 150" />
    <LightgalleryItem :url="pics[5] || ''" class="col-span-2 md:col-span-1 md:col-start-3 md:row-start-4 md:row-span-5" data-aos="fade-up" :data-aos-delay="6 * 150" />

    <!-- Col 4 -->
    <LightgalleryItem :url="pics[6] || ''" class="col-span-2 md:col-span-1 md:col-start-4 md:row-start-1 md:row-span-5" data-aos="fade-up" :data-aos-delay="7 * 150" />
    <LightgalleryItem :url="pics[7] || ''" class="md:col-start-4 md:row-start-6 md:row-span-3" data-aos="fade-up" :data-aos-delay="8 * 150" />

        <LightgalleryItem :url="pics[8] || ''" class="md:hidden md:col-start-3 md:row-start-1 md:row-span-3" data-aos="fade-up" :data-aos-delay="9 * 150" />
    <LightgalleryItem :url="pics[9] || ''" class="md:hidden col-span-2 md:col-span-1 md:col-start-3 md:row-start-4 md:row-span-5" imgClass="object-[0px_-50px]" data-aos="fade-up" :data-aos-delay="10 * 150" />
  </lightgallery>
</template>

<style>
@import 'lightgallery/css/lightgallery.css';
@import 'lightgallery/css/lg-thumbnail.css';
@import 'lightgallery/css/lg-zoom.css';
</style>
