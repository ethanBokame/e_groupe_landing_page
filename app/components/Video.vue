<script lang="ts">
export default {
  useHead() {
    return {
      script: [
        {
          src: "https://player.vimeo.com/api/player.js",
          async: true
        }
      ]
    }
  }
}
</script>

<template>

  <div 
    class="w-fit relative lg:w-[40%] z-20 md:bg-red-600" 
    data-aos="fade-right">
    
    <iframe class="h-[400px] w-full relative z-10"
      src="https://player.vimeo.com/video/1189304717?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479&amp;autoplay=1&amp;muted=1&amp;loop=1"
      allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media; web-share"
      referrerpolicy="strict-origin-when-cross-origin" title="E-groupe">
    </iframe>
    <div class="md:hidden absolute bg-red-600 p-7 top-[-10px] left-[28px]"></div>
    <div class="md:hidden absolute bg-red-600 p-7 bottom-[-10px] right-[28px]"></div>
  </div>
</template>