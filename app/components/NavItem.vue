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
  <NuxtLink :to="item.to" class="flex items-center gap-2 py-3 px-8 text-white font-semibold">
    <Icon :name="item.icon" class="text-yellow-300" />
    {{ item.label }}
  </NuxtLink>
</template>