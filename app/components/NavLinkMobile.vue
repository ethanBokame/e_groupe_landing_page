<script lang="ts">
import type { NavLinkMobile } from '~/types/NavLinkMobile.type';

export default {
  props: {
    link: {
      type: Object as PropType<NavLinkMobile>,
      required: true
    }
  },
  computed: {
    route() {
      return useRoute()
    },

    onThisPage(): boolean {
      return this.route.path === this.link.to
    }
  }
}
</script>

<template>
  <NuxtLink :to="link.to" class="relative flex gap-3 items-center p-2">
    <Icon :name="link.icon" class="h-5 w-5 text-yellow-500" />
    {{ link.label }}

    <div :class="['absolute bottom-0 h-[3px] bg-yellow-500', onThisPage ? 'w-full' : 'w-0']"></div>
  </NuxtLink>
</template>