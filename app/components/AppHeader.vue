<script lang="ts">
export default {
  data() {
    return {
      items: [
        {
          label: 'A propos',
          to: '/about'
        },
        {
          label: 'Nos bases',
          to: '/bases'
        },
        {
          label: 'Nos majors',
          to: '/majors'
        },
        {
          label: 'Galerie photos',
          to: '/pictures'
        },
        {
          label: 'Actualités',
          to: '/news'
        },
        {
          label: 'Contacts',
          to: '/contacts'
        }
      ]
    }
  }
}
</script>

<template>
  <nav>
    <div>
      <NuxtLink to="/">
        <NuxtImg src="/logo.png" />
      </NuxtLink>
    </div>

    <div class="flex bg-red-600 items-center justify-center">
      <template v-for="item in items" :key="item.label">
        <NavItem :item="item"/>
        <div class="h-5 w-[1px] bg-yellow-500"></div>
      </template>
    </div>
  </nav>
</template>
