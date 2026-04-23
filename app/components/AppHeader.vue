<script lang="ts">
export default {
  data() {
    return {
      items: [
        {
          label: 'A propos',
          to: '/about',
          icon: 'solar:buildings-2-bold'
        },
        {
          label: 'Nos bases',
          to: '/bases',
          icon: 'solar:map-point-wave-bold'
        },
        {
          label: 'Nos majors',
          to: '/majors',
          icon: 'solar:square-academic-cap-2-bold'
        },
        {
          label: 'Galerie photos',
          to: '/pictures',
          icon: 'solar:gallery-wide-bold'
        },
        {
          label: 'Actualités',
          to: '/news',
          icon: 'solar:documents-bold'
        },
        {
          label: 'Contacts',
          to: '/contacts',
          icon: 'solar:phone-bold'
        },
        {
          label: 'Connexion',
          to: '/login',
          icon: 'solar:user-bold'
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
      <template v-for="item, index in items" :key="item.label">
        <NavItem :item="item"/>
        <div v-if="index != items.length - 1" class="h-5 w-[1px] bg-yellow-500"></div>
      </template>
    </div>
  </nav>
</template>
