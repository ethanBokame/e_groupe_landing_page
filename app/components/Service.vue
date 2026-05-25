<script lang="ts">
import type { Service } from '~/types/Service.type';

export default {
  props: {
    service: {
      type: Object as PropType<Service>,
      required: true
    }
  }
}
</script>
<template>
  <div>
    <p class="font-semibold text-red-600">{{ service.label }}</p>
    <hr class="bg-yellow-500 h-1 w-28 mt-1 mb-3">
    <p>{{ service.description }}</p>
  </div>
</template>