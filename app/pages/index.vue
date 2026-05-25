<script lang="ts">
import { reasonsData } from '~/data/reasons.data';
import { placesData } from '~/data/places.data';
import { teamData } from '~/data/team.data';
import { servicesData } from '~/data/services.data';

export default {
  setup() {
    useHead({
      title: 'Acceuil'
    })
  },
  data() {
    return {
      services: servicesData,
      reasons: reasonsData,
      places: placesData,
      team: teamData,
      isOpenPlaces: false
    }
  },
  methods: {
    togglePlaces() {
      this.isOpenPlaces = !this.isOpenPlaces
    }
  }
}
</script>

<template>
  <!-- pictures carousel -->
  <Swiper />

  <!-- Mini presentation section -->
  <section
    class="px-6 md:px-12 lg:px-14 py-16 max-w-[1300px] mx-auto flex flex-col lg:flex-row gap-12 lg:justify-between items-center">

    <Video />
    
    <div class="flex flex-col gap-[30px] lg:w-[410px]">
      
      <hr 
        class="bg-red-600 h-[10px] w-[70px] mb-[-15px]" 
        data-aos="fade-left">

      <h1 
        class="text-3xl lg:text-4xl font-bold" 
        data-aos="fade-left" 
        data-aos-delay="50">
        Plus qu'une structure</h1>
      
      <p 
        data-aos="fade-left" 
        data-aos-delay="60">
        En Activité depuis 2013, l’Excellence Groupe ne se contente pas de
        dispenser des cours, mais s’engage à guider
        la jeunesse sur le droit
        chemin en lui insufflant le goût du succès et du travail.</p>
      
      <NuxtLink 
        to="/about" 
        data-aos="fade-left" 
        data-aos-delay="70"
        class="text-white bg-red-600 px-3.5 py-2.5 font-bold self-baseline border-2 duration-200 border-red-600 hover:border-yellow-500 hover:text-yellow-500 hover:bg-white">
        LIRE LA SUITE</NuxtLink>
    </div>
  </section>

  <!-- Services section -->
  <section class="pt-5 pb-16">
    <SectionTitle>Nos services</SectionTitle>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 py-12 gap-6 md:gap-16 px-6 md:px-12 lg:px-14 max-w-[1300px] mx-auto">
      <Service 
        v-for="(s,i) in services" 
        :key="i" 
        :service="s" 
        data-aos="fade-up" />
    </div>

    <div class="w-fit mx-auto text-center">
      <p 
        class="text-3xl mb-7" 
        data-aos="fade-up">
        Contactez nous pour plus d'informations</p>
      
      <a 
        class="text-2xl tracking-widest text-white bg-yellow-500 py-3 px-6 rounded-full" 
        href="tel:+2250758439990" 
        data-aos="fade-up">
        0758439990</a>
    </div>
  </section>

  <!-- Reasons section -->
  <section class="py-16 bg-gray-100">
    <SectionTitle>Pourquoi choisir l'Excellence Groupe?</SectionTitle>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 py-12 gap-12 px-6 md:px-12 lg:px-14 max-w-[1300px] mx-auto">
      <!-- mobile -->
      <ReasonCard class="md:hidden" v-for="(r,i) in reasons" :key="i" :reason="r" data-aos="fade-up" />
      
      <!-- desktop -->
      <ReasonCard class="hidden md:block" v-for="(r,i) in reasons" :key="i" :reason="r" data-aos="fade-up"
        :data-aos-delay="i * 150" />
    </div>
  </section>

  <!-- Places section -->
  <section class="px-6 md:px-12 lg:px-14 py-16 max-w-[1300px] mx-auto">
    <SectionTitle>Nos différentes bases</SectionTitle>

    <!-- mobile -->
    <div class="lg:hidden">
      <div class="py-12">
        <div class="grid grid-cols-2 md:grid-cols-3 gap-x-24 gap-y-12">
          <div v-for="(p, i) in places.slice(0, 10)" :key="i" data-aos="fade-up" :data-aos-delay="i * 150">
            <Place :place="p" />
          </div>
          <Place v-for="(p, i) in places.slice(10)" :place="p" :key="i" v-if="isOpenPlaces" />
        </div>
      </div>

      <button class="w-full flex items-center justify-center gap-2" @click="togglePlaces">
        Voir {{ isOpenPlaces ? 'moins' : 'plus' }}
        <Icon :name="`solar:alt-arrow-${isOpenPlaces ? 'up' : 'down'}-line-duotone`" />
      </button>
    </div>

    <!-- desktop -->
    <div class="hidden lg:grid lg:grid-cols-6 py-12 gap-x-24 gap-y-12">
      <div v-for="(p, i) in places" :key="i" data-aos="fade-up" :data-aos-delay="i * 150">
        <Place :place="p" />
      </div>
    </div>
  </section>

  <!-- Mini gallery -->
  <section class="px-6 md:px-12 lg:px-14 py-16 max-w-[1300px] mx-auto bg-gray-100">
    <SectionTitle>L'Excellence Groupe en images</SectionTitle>
    <MiniGallery />
    <NuxtLink to="/gallery" class="flex items-center w-fit mx-auto text-white bg-red-600 px-3.5 py-2.5 font-bold self-baseline border-2 duration-200 border-red-600 hover:border-yellow-500 hover:text-yellow-500 hover:bg-white">
      VOIR LA GALERIE PHOTOS
    </NuxtLink>
  </section>

  <section class="px-6 md:px-12 lg:px-14 py-16 max-w-[1300px] mx-auto">
    <SectionTitle>Equipe directive</SectionTitle>
    <div class="grid grid-cols-1 md:grid-cols-4 gap-8 py-12">
      <TeamItem 
        v-for="(t,i) in team" 
        :key="i" 
        :item="t" 
        data-aos="fade-up" 
        :data-aos-delay="i * 150" />
    </div>
  </section>

</template>