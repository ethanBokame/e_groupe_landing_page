<script lang="ts">
import { infosData } from '~/data/infos.data';
import { linksData } from '~/data/links.data';
import { socialsNetworkData } from '~/data/socialsnetworks.data';

export default {
  data() {
    return {
      currentYear: new Date().getFullYear(),
      infos: infosData,
      links: linksData,
      socialsNetworks: socialsNetworkData,
      sectionClass: "px-6 md:px-12 lg:px-14 py-16 max-w-[1300px] mx-auto"
    }
  }
}
</script>
<template>
  <section class="bg-red-700">

    <div class="flex flex-col gap-7 px-6 md:px-12 lg:px-14 py-10 mx-auto max-w-[1300px]">
      <!-- Logo -->
      <NuxtImg 
        src="/logo.png" 
        format="webp"
        loading="lazy"
        class="h-20 w-20 mx-auto md:h-25 md:w-25" />
      
      <div class="flex flex-col md:flex-row md:justify-between gap-5">
        
        <!-- Infos sup -->
        <div class="flex flex-col gap-2 p-3 w-full md:w-fit md:self-baseline bg-red-900 rounded-lg">
          <div 
            v-for="(i, index) in infos" 
            :key="index" 
            class="flex items-center gap-2 text-white">
            
            <Icon 
              :name="i.icon" 
              class="h-6 w-6" />
            
            <a 
              :href="i.to" 
              class="lg:hover:underline">
              {{ i.content }}</a>
          </div>
        </div>

        <!-- Menu -->
        <div class="flex flex-col gap-1 text-white">
          <p class="font-bold">MENU</p>
          <NuxtLink 
            v-for="(l,i) in links" 
            :key="i" 
            :to="l.to">
            {{ l.label }}</NuxtLink>
        </div>

        <!-- Networks -->
        <div class="flex flex-col gap-1 text-white">
          <p class="font-bold">RESEAUX SOCIAUX</p>
          <div class="flex gap-4">
            <a 
              v-for="(sN, i) in socialsNetworks" 
              :key="i" 
              :href="sN.to" 
              target="_blank">
              
              <Icon 
                :name="sN.icon" 
                class="h-6 w-6" />
            </a>
          </div>
        </div>
      </div>

      <hr>

      <div class="text-white flex flex-col md:flex-row md:justify-between">
        <p>© {{ currentYear }} Excellence groupe - Tous droits réservés</p>
        <p>Conçu par <a href="https://www.linkedin.com/in/ethan-bokam%C3%A9-0b59a430b/" target="_blank" class="underline underline-offset-4 font-bold">Ethan Bokamé</a></p>
      </div>
    </div>

  </section>
</template>
