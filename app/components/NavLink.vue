<script lang="ts">
  import type { NavLinkType } from '~/types/NavLinkType';

  export default {
    props: {
      link: {
        type: Object as PropType<NavLinkType>,
        required: true
      }
    }
  }
</script>

<template>
  <NuxtLink :to="link.to" class="flex items-center gap-2 py-3 px-8 text-white font-semibold">
    <Icon :name="link.icon" class="text-yellow-300" />
    {{link.label}}
  </NuxtLink>
</template>