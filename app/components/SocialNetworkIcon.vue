<script lang="ts">
import type { SocialNetworkIconType } from '~/types/SocialNetworkIconType';

export default {
  props: {
    sN: {
      type: Object as PropType<SocialNetworkIconType>,
      required: true
    }
  }
}
</script>

<template>
  <a :href="sN.to" target="_blank">
    <Icon :name="sN.icon" class="text-yellow-500 hover:text-yellow-700" />
  </a>
</template>