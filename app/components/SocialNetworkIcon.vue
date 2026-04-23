<script lang="ts">
import type { SocialNetworkIconType } from '~/types/SocialNetworkIconType';

export default defineComponent({
  props: {
    sN: {
      type: Object as PropType<SocialNetworkIconType>,
      required: true
    }
  }
})
</script>

<template>
  <a :href="sN.to" target="_blank" class="ml-4">
    <Icon :name="sN.icon" class="text-yellow-500 h-5 w-5" />
  </a>
</template>