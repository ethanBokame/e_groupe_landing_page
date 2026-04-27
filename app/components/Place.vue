<script lang="ts">
import type { place } from '~/types/place.type';

export default {
  props: {
    place: {
      type: Object as PropType<place>,
      required: true
    }
  }
}
</script>

<template>
  <div class="flex items-center gap-3 w-fit">
    <div class="flex items-center p-1.5 bg-yellow-200 rounded-full self-baseline">
      <Icon name="solar:map-point-linear" class="w-6 h-6 text-yellow-800" />
    </div>
    
    <div>
      <p class="text-sm font-semibold">{{ place.town }}</p>
      <p class="text-sm text-gray-500 mt-[-2px]">{{ place.city }}</p>
      <p class="text-[12px] text-yellow-800 cursor-pointer hover:underline">Plus d'infos</p>
    </div>
  </div>
</template>