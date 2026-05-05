<script lang="ts">
import { reasonsData } from '~/data/reasons.data';
import { placesData } from '~/data/places.data';

export default {
  data() {
    return {
      reasons: reasonsData,
      places: placesData,
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
  <section class="flex flex-col lg:flex-row gap-12 lg:justify-between items-center max-w-[1300px] mx-auto px-6 md:px-12 lg:px-14 py-16">
    <div class="w-fit relative lg:w-[40%] z-20 md:bg-red-600" data-aos="fade-right">
      <Video />
      <div class="md:hidden absolute bg-red-600 p-7 top-[-10px] left-[28px]"></div>
      <div class="md:hidden absolute bg-red-600 p-7 bottom-[-10px] right-[28px]"></div>
    </div>

    <div class="flex flex-col gap-[30px] lg:w-[410px]">
      <hr class="bg-red-600 h-[10px] w-[70px] mb-[-15px]" data-aos="fade-left">
      <h1 class="text-3xl lg:text-4xl font-bold" data-aos="fade-left" data-aos-delay="50">Plus qu'une structure</h1>
      <p data-aos="fade-left" data-aos-delay="60">En Activité depuis 2013, l’Excellence Groupe ne se contente pas de
        dispenser des cours, mais s’engage à guider
        la jeunesse sur le droit
        chemin en lui insufflant le goût du succès et du travail.</p>
      <NuxtLink to="/about" data-aos="fade-left" data-aos-delay="70"
        class="text-white bg-red-600 px-3.5 py-2.5 font-bold self-baseline border-2 duration-200 border-red-600 hover:border-yellow-500 hover:text-yellow-500 hover:bg-white">
        LIRE LA SUITE
      </NuxtLink>
    </div>
  </section>

  <!-- Reasons section -->
  <section class="py-16 bg-gray-100">
    <SectionTitle>Pourquoi choisir l'Excellence Groupe?</SectionTitle>

    <div
      class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 py-12 gap-12 px-6 md:px-12 lg:px-14 max-w-[1300px] mx-auto">
      <!-- mobile -->
      <ReasonCard class="md:hidden" v-for="r in reasons" :key="r.label" :reason="r" data-aos="fade-up" />

      <!-- desktop -->
      <ReasonCard class="hidden md:block" v-for="(r, index) in reasons" :key="r.label" :reason="r" data-aos="fade-up"
        :data-aos-delay="index * 150" />
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

</template>