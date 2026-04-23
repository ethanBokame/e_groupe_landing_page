import { SocialNetworkIconType } from '../types/SocialNetworkIconType';
<script lang="ts">
export default {
  data() {
    return {
      links: [
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
      ],
      socialsNetworks: [
        {
          to: 'https://www.tiktok.com/@group.excellence',
          icon: 'streamline-logos:tiktok-logo-solid'
        },
        {
          to: 'https://www.facebook.com/ExcellenceGroup1',
          icon: 'streamline-logos:facebook-logo-2-solid'
        },
        {
          to: 'https://www.instagram.com/group.excellence',
          icon: 'streamline-logos:instagram-logo-2-solid'
        },
      ]
    }
  }
}
</script>

<template>
  <div class="flex items-center justify-between px-14 pl-10">
    <NuxtLink to="/">
      <NuxtImg src="/logo.png" class="h-24 w-24"/>
    </NuxtLink>

    <div>
      <SocialNetworkIcon v-for="sN in socialsNetworks"  :sN="sN"/>
    </div>
  </div>

  <nav class="flex bg-red-600 items-center justify-center">
    <template v-for="link, index in links" :key="link.label">
      <NavLink :link="link" />
      <div v-if="index != links.length - 1" class="h-5 w-[1px] bg-yellow-500"></div>
    </template>
  </nav>
</template>
