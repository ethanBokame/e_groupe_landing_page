<script lang="ts">
export default {
  head() {
    return {
      script: [
        {
          src: "https://player.vimeo.com/api/player.js",
          defer: true
        }
      ]
    }
  }
}
</script>

<template>
  <iframe class="h-[400px] w-full relative z-10"
    src="https://player.vimeo.com/video/1189304717?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479&amp;autoplay=1&amp;muted=1&amp;loop=0"
    allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media; web-share"
    referrerpolicy="strict-origin-when-cross-origin" title="E-groupe">
  </iframe>
</template>