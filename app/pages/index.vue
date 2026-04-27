<script lang="ts">
import { reasonsData } from '~/data/reasons.data';
import { placesData } from '~/data/places.data';

export default {
  data() {
    return {
      reasons: reasonsData,
      places: placesData
    }
  }
}
</script>

<template>
  <!-- pictures carousel -->
  <Swiper />

  <!-- Mini presentation section -->
  <section class="flex flex-col lg:flex-row gap-12 lg:justify-between items-center px-6 lg:px-14 py-16">
    <div class="bg-red-600 py-0 lg:p-12 w-full lg:w-[350px]">
      <NuxtImg src="/pic_8.jpeg" class="h-[200px] lg:h-[320px] mx-auto lg:mx-0 max-w-fit " />
    </div>

    <div class="flex flex-col gap-[30px] lg:w-[410px]">
      <div class="bg-red-600 h-[10px] w-[70px] mb-[-15px]"></div>
      <h1 class="text-3xl lg:text-4xl font-bold">Plus qu'une structure</h1>
      <p>En Activité depuis 2013, l’Excellence Groupe ne se contente pas de dispenser des cours, mais s’engage à guider
        la jeunesse sur le droit
        chemin en lui insufflant le goût du succès et du travail.</p>
      <NuxtLink to="/about"
        class="text-white bg-red-600 px-3.5 py-2.5 font-bold self-baseline border-2 duration-200 border-red-600 hover:border-yellow-500 hover:text-yellow-500 hover:bg-white">
        LIRE LA SUITE
      </NuxtLink>
    </div>
  </section>

  <!-- Reasons section -->
  <section class="px-6 lg:px-14 py-16 bg-gray-100">
    <SectionTitle>Pourquoi choisir l'Excellence Groupe?</SectionTitle>

    <div class="grid grid-cols-1 lg:grid-cols-3 py-12 gap-12">
      <!-- mobile -->
      <ReasonCard class="lg:hidden" v-for="r in reasons" :key="r.label" :reason="r" data-aos="fade-up" />

      <!-- desktop -->
      <ReasonCard class="hidden lg:block" v-for="(r, index) in reasons" :key="r.label" :reason="r" data-aos="fade-up"
        :data-aos-delay="index * 150" />
    </div>
  </section>

  <!-- Find bases section -->
  <section class="px-6 lg:px-14 py-16">
    <SectionTitle>Nos différentes bases</SectionTitle>

    <div class="grid grid-cols-2 lg:grid-cols-6 py-12 gap-x-24 gap-y-12">
      <Place v-for="(p, index) in places" :key="index" :place="p" data-aos="fade-up" :data-aos-delay="index * 150" />
    </div>
  </section>

</template>