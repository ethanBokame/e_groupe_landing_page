<script lang="ts">
import type { TeamItem } from '~/types/TeamItem.type';

export default {
  props: {
    item: {
      type: Object as PropType<TeamItem>,
      required: true
    }
  }
}
</script>
<template>
  <div class="flex flex-col items-center gap-3 text-center">
    <NuxtImg 
      :src="item.img" 
      format="webp"
      loading="lazy"
      class="rounded-full w-[150px] border-4 border-yellow-500" />
    <p class="text-xl font-bold mb-[-6px]">{{ item.name }}</p>
    <p>{{ item.job }}</p>
  </div>
</template>