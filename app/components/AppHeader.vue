<script lang="ts">
import { linksData } from '~/data/links.data';
import { socialsNetworkData } from '~/data/socialsnetworks.data';
import { infosData } from '~/data/infos.data';

export default {
  data() {
    return {
      links: linksData,
      socialsNetworks: socialsNetworkData,
      infos: infosData,
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
  <nav class="hidden lg:flex bg-red-600 items-center justify-center">
    <template v-for="(l, index) in links" :key="l.label">
      <NavLinkDesktop :link="l" />
      <div v-if="index != links.length - 1" class="h-5 w-[0.75px] bg-yellow-500"></div>
    </template>
  </nav>
</template>
