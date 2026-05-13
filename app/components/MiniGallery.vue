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
    class="grid grid-cols-3 md:grid-cols-4 md:grid-rows-8 gap-1.5 md:gap-3 md:h-[420px] py-12">
    <!-- Col 1 -->
    <LightgalleryItem url="/gallery/pic_1.jpeg" class="md:col-start-1 md:row-start-1 md:row-span-3" data-aos="fade-up" :data-aos-delay="1 * 150" />
    <LightgalleryItem url="/gallery/pic_2.jpeg" class="col-span-2 md:col-span-1 md:col-start-1 md:row-start-4 md:row-span-5" data-aos="fade-up" :data-aos-delay="2 * 150" />

    <!-- Col 2 -->
    <LightgalleryItem url="/gallery/pic_3.jpeg" class="col-span-2 md:col-span-1 md:col-start-2 md:row-start-1 md:row-span-5" data-aos="fade-up" :data-aos-delay="3 * 150" />
    <LightgalleryItem url="/gallery/pic_4.jpeg" class="md:col-start-2 md:row-start-6 md:row-span-3" data-aos="fade-up" :data-aos-delay="4 * 150" />

    <!-- Col 3 -->
    <LightgalleryItem url="/gallery/pic_5.jpeg" class="md:col-start-3 md:row-start-1 md:row-span-3" data-aos="fade-up" :data-aos-delay="5 * 150" />
    <LightgalleryItem url="/gallery/pic_6.jpeg" class="col-span-2 md:col-span-1 md:col-start-3 md:row-start-4 md:row-span-5" data-aos="fade-up" :data-aos-delay="6 * 150" />

    <!-- Col 4 -->
    <LightgalleryItem url="/gallery/pic_7.jpeg" class="col-span-2 md:col-span-1 md:col-start-4 md:row-start-1 md:row-span-5" data-aos="fade-up" :data-aos-delay="7 * 150" />
    <LightgalleryItem url="/gallery/pic_8.jpeg" class="md:col-start-4 md:row-start-6 md:row-span-3" data-aos="fade-up" :data-aos-delay="8 * 150" />
  </lightgallery>
</template>

<style>
@import 'lightgallery/css/lightgallery.css';
@import 'lightgallery/css/lg-thumbnail.css';
@import 'lightgallery/css/lg-zoom.css';
</style>
