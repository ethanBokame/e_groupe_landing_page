<script lang="ts">
import type { SocialNetworkIcon } from '~/types/SocialNetworkIcon.type';

export default {
  props: {
    sN: {
      type: Object as PropType<SocialNetworkIcon>,
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