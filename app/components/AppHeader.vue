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
          label: 'Connexion',
          to: '/login',
          icon: 'solar:user-bold'
        }
      ],
      socialsNetworks: [
        {
          to: 'https://www.tiktok.com/@group.excellence',
          icon: 'simple-icons:tiktok'
        },
        {
          to: 'https://www.facebook.com/ExcellenceGroup1',
          icon: 'simple-icons:facebook'
        },
        {
          to: 'https://www.instagram.com/group.excellence',
          icon: 'simple-icons:instagram'
        },
      ],
      infos: [
        {
          content: 'Abidjan - Marcory Zone 4C',
          to: '#',
          icon: 'solar:map-point-wave-bold'
        },
        {
          content: 'groupeexcellence0001@gmail.com',
          to: 'mailto:groupeexcellence0001@gmail.com',
          icon: 'simple-icons:gmail'
        },
        {
          content: '+225075843999',
          to: 'tel:+2250758439990',
          icon: 'solar:phone-bold'
        }
      ],
      IsOpen: false
    }
  },
  methods: {
    toggleMenu() {
      this.IsOpen = !this.IsOpen
    }
  }
}
</script>

<template>
  <div class="flex items-center justify-between px-4 pl-2  lg:px-14 lg:pl-10">

    <NuxtLink to="/">
      <NuxtImg src="/logo.png" class="h-24 w-24" />
    </NuxtLink>

    <!-- Shadow screen -->
    <ShadowScreen @click="toggleMenu" :class="[
      'transition-opacity duration-300',
      IsOpen
        ? 'opacity-100 pointer-events-auto'
        : 'opacity-0 pointer-events-none'
    ]" />

    <!-- mobile header -->
    <Icon name="lucide:menu" class="lg:hidden h-8 w-8 text-yellow-500" @click="toggleMenu" />

    <!-- mobile navbar -->
    <div :class="[
      'fixed top-0 right-0 flex flex-col p-4 pt-8 z-30 bg-black w-[250px] h-screen transition-transform duration-300 ease-in-out',
      IsOpen ? 'translate-x-0' : 'translate-x-full'
    ]">

      <Icon name="lucide:x" class="h-8 w-8 text-yellow-500 self-end" @click="toggleMenu" />

      <nav class="flex flex-col gap-4 p-2 text-white">

        <NavLinkMobile v-for="l in links.slice(0, -1)" :key="l.label" :link="l" />

        <NuxtLink to="/login" class="flex items-center gap-3 bg-yellow-500 p-2 rounded-xl justify-center">
          <Icon name="solar:user-bold" class="h-5 w-5" />
          Connexion
        </NuxtLink>
      </nav>
    </div>

    <!-- desktop header -->
    <div class="hidden lg:flex gap-6 items-center">

      <InfoSup v-for="i in infos" :key="i.to" :info="i" />

      <hr class="h-5 w-[2px] bg-yellow-500 rounded-md">

      <div class="flex gap-5 mt-1">
        <SocialNetworkIcon v-for="s in socialsNetworks" :key="s.to" :sN="s" />
      </div>
    </div>

  </div>

  <!-- desktop navbar -->
  <nav class="hidden flex bg-red-600 items-center justify-center">
    <template v-for="(l, index) in links" :key="l.label">
      <NavLinkDesktop :link="l" />
      <div v-if="index != links.length - 1" class="h-5 w-[0.75px] bg-yellow-500"></div>
    </template>
  </nav>
</template>
