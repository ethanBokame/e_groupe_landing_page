<script lang="ts">
import type { NavLinkType } from '~/types/NavLinkType';

export default {
  props: {
    link: {
      type: Object as PropType<NavLinkType>,
      required: true
    }
  },
  data() {
    return {
      hover: false
    }
  },
  methods: {
    toggleHover() {
      return this.hover = !this.hover
    }
  }
}
</script>

<template>
  <NuxtLink :to="link.to" class="relative group">
    <div class="flex items-center gap-2 py-3 px-8 text-white font-semibold">
      <Icon :name="link.icon" class="text-yellow-300" />
      {{ link.label }}
    </div>
    <div class="absolute bottom-0 h-[4px] w-0 bg-yellow-300 transition-all duration-300 group-hover:w-full"></div>
  </NuxtLink>
</template>