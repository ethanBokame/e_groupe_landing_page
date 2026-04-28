<script lang="ts">
export default {
  props: {
    link: {
      type: String,
      required: true
    }
  }
}
</script>

<template>
  <iframe height="300" width="100%" :src="link" style="border:0; margin-top: 15px; margin-bottom: 15px;" allowfullscreen="" loading="lazy"
    referrerpolicy="no-referrer-when-downgrade">
  </iframe>
</template>