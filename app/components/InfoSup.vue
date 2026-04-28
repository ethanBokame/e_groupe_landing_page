<script lang="ts">
  import type { InfoSup } from '~/types/infosup.type';
  
  export default {
    props: {
      info: {
        type: Object as PropType<InfoSup>,
        required: true
      }
    }
  }
</script>

<template>
  <div class="flex items-center gap-2">
    <Icon :name="info.icon" class="text-yellow-500" />
    <a :href="info.to" class="text-sm text-yellow-500 font-semibold hover:underline">{{info.content}}</a>
  </div>
</template>