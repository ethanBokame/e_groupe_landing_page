<script lang="ts">
import type { NavLinkDesktop } from '~/types/NavLinkDesktop.type';

export default {
  props: {
    link: {
      type: Object as PropType<NavLinkDesktop>,
      required: true
    }
  },
  computed: {
    onThisPage(): boolean {
      return currentRoute() === this.link.to || currentRoute() === this.link.to + '/'
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

    <div :class="[
      'absolute bottom-0 h-[4px] bg-yellow-300 transition-all duration-300 group-hover:w-full',
      onThisPage ? 'w-full' : 'w-0'
    ]">
    </div>
    
  </NuxtLink>
</template>