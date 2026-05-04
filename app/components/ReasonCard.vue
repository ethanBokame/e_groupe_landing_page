<script lang="ts">
import type { ReasonCard } from '~/types/ReasonCard.type';

export default {
  props: {
    reason: {
      type: Object as PropType<ReasonCard>,
      required: true
    }
  }
}
</script>

<template>
  <div class="flex flex-col items-baseline rounded-lg overflow-hidden shadow-sm bg-white h-fit md:h-[360px] lg:h-[350px]">
    <NuxtImg class="h-[170px] w-full object-cover object-top rounded-bottom-ellipse mb-5" :src="reason.img" />
    <div class="flex gap-3 items-center mb-5 pl-4">
      <Icon :name="reason.icon" class="w-5 h-5" />
      <h2 class="font-bold text-xl">{{ reason.label }}</h2>
    </div>
    
    <p class=" mb-5 px-4" v-html="reason.description"></p>
    </div>
</template>