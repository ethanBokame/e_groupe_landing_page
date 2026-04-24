<script lang="ts">
import type { ReasonCardType } from '~/types/ReasonCardType';

export default {
  props: {
    reason: {
      type: Object as PropType<ReasonCardType>,
      required: true
    }
  }
}
</script>

<template>
  <div class="flex flex-col items-baseline rounded-lg overflow-hidden shadow-sm bg-white h-[350px]">
    <NuxtImg class="h-[170px] w-full object-cover object-top rounded-bottom-ellipse mb-5" :src="reason.img" />
    <h2 class="font-bold text-xl mb-5 pl-4">{{ reason.label }}</h2>
    <p class="mb-5 px-4" v-html="reason.description"></p>
  </div>
</template>