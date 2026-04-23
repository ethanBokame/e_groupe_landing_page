<script lang="ts">
  import type { NavItemType } from '../types/NavItemType';

  export default defineComponent({
    props: {
      item: {
        type: Object as PropType<NavItemType>,
        required: true
      }
    }
  })
</script>

<template>
  <NuxtLink :to="item.to" class="py-3 px-8 text-white font-semibold">
    {{ item.label }}
  </NuxtLink>
</template>