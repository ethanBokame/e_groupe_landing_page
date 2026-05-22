<script lang="ts">
import Lightgallery from 'lightgallery/vue';
import lgThumbnail from 'lightgallery/plugins/thumbnail';
import lgZoom from 'lightgallery/plugins/zoom';

let lightGallery: any = null;

export default {
  components: {
    Lightgallery,
  },
  watch: {
    currentPage(newVal, oldVal) {
      this.$nextTick(() => {
        lightGallery.refresh();
      });
    },
  },
  data() {
    return {
      plugins: [lgThumbnail, lgZoom],
      pics: range(1, 43),
      currentPage: 1,
      itemsPages: 24,
    }
  },
  computed: {
    pages() {
      return Math.ceil(this.pics.length / this.itemsPages)
    },
    firstButtonValue() {
      return (this.currentPage == 1) ? 1 : this.currentPage - 1
    },
    secondButtonValue() {
      return (this.currentPage == 1) ? 2 : this.currentPage
    },
    thirdButtonValue() {
      return (this.currentPage == 1) ? 3 : this.currentPage + 1
    },
    noPagesPrev() {
      return this.currentPage == 1
    },
    noPagesNext() {
      return this.currentPage == this.pages
    },
    firstIndex() {
      return (this.currentPage * this.itemsPages) - this.itemsPages
    },
    lastIndex() {
      return this.currentPage * this.itemsPages
    },
  },
  methods: {
    setCurrentPage(page: number) {
      this.currentPage = page
    },
    increment() {
      this.currentPage++
      console.log('increment');
    },
    decrement() {
      this.currentPage--
    },
    goToFirstPage() {
      this.currentPage = 1
    },
    goToLastPage() {
      this.currentPage = this.pages
    },
    scrollToTopGallery() {
      setTimeout(scrollToTop, 100)
    },
    onInit(detail: any) {
      lightGallery = detail.instance;
    },
    onBeforeSlide() {
      console.log('calling before slide');
    },
  },
}
</script>

<template>
  <section class="px-6 md:px-12 lg:px-14 py-8 max-w-[1300px] mx-auto">

    <PageTitle>Galerie Photos</PageTitle>

    <lightgallery 
      :settings="{ speed: 500, plugins: plugins }" 
      :onInit="onInit" 
      :onBeforeSlide="onBeforeSlide"
      class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-1.5 py-12">
      <a v-for="i in pics.slice(firstIndex, lastIndex)" 
        :href="`/gallery/pic_${i}.jpeg`" 
        class="overflow-hidden">
        <NuxtImg 
          :src="`/gallery/pic_${i}.jpeg`"
          class="w-full h-[200px] object-cover hover:scale-110 duration-300 hover:cursor-zoom-in" 
          format="webp"
          placeholder />
      </a>
    </lightgallery>

    <div class="flex items-center justify-center gap-2">

      <button 
        :class="['flex items-center justify-center h-9 w-9 border rounded-md', noPagesPrev ? 'bg-gray-200' : '']"
        :disabled="noPagesPrev" @click="goToFirstPage(); scrollToTopGallery()">
        <Icon name="solar:double-alt-arrow-left-linear" />
      </button>

      <button 
        :class="['flex items-center justify-center h-9 w-9 border rounded-md', noPagesPrev ? 'bg-gray-200' : '']"
        :disabled="noPagesPrev" @click="decrement(); scrollToTopGallery()">
        <Icon name="solar:alt-arrow-left-linear" />
      </button>

      <button
        :class="['flex items-center justify-center h-9 w-9 border rounded-md', currentPage == firstButtonValue ? 'bg-red-600/20 border-red-600' : '']"
        @click="setCurrentPage(firstButtonValue); scrollToTopGallery()">
        {{ firstButtonValue }}
      </button>

      <button 
        v-if="pages > 1"
        :class="['flex items-center justify-center h-9 w-9 border rounded-md', currentPage == secondButtonValue ? 'bg-red-600/20 border-red-600' : '']"
        @click="setCurrentPage(secondButtonValue); scrollToTopGallery()">
        {{ secondButtonValue }}
      </button>

      <button 
        v-if="pages > 2 && thirdButtonValue <= pages"
        :class="['flex items-center justify-center h-9 w-9 border rounded-md', currentPage == thirdButtonValue ? 'bg-red-600/20 border-red-600' : '']"
        @click="setCurrentPage(thirdButtonValue); scrollToTopGallery()">
        {{ thirdButtonValue }}
      </button>

      <button 
        :class="['flex items-center justify-center h-9 w-9 border rounded-md', noPagesNext ? 'bg-gray-200' : '']"
        :disabled="noPagesNext" @click="increment(); scrollToTopGallery()">
        <Icon name="solar:alt-arrow-right-linear" />
      </button>

      <button 
        :class="['flex items-center justify-center h-9 w-9 border rounded-md', noPagesNext ? 'bg-gray-200' : '']"
        :disabled="noPagesNext" @click="goToLastPage(); scrollToTopGallery()">
        <Icon name="solar:double-alt-arrow-right-linear" />
      </button>

    </div>
  </section>

</template>

<style>
@import 'lightgallery/css/lightgallery.css';
@import 'lightgallery/css/lg-thumbnail.css';
@import 'lightgallery/css/lg-zoom.css';
</style>
