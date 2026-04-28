<script lang="ts">
import type { NavLinkMobile } from '~/types/NavLinkMobile.type';

export default {
  props: {
    link: {
      type: Object as PropType<NavLinkMobile>,
      required: true
    }
  }
}
</script>

<template>
  <NuxtLink :to="link.to" class="flex gap-3 items-center p-2">
    <Icon :name="link.icon" class="h-5 w-5 text-yellow-500" /> 
    {{ link.label }}
  </NuxtLink>
</template>