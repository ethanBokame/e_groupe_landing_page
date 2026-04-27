<script lang="ts">

export default {
  data() {
    return {
      reasons: [
        {
          label: 'Personnel qualifié',
          description: 'Notre personnel est composé de professionnels du domaine, de professeurs agrégés et des meilleurs étudiants des universités locales.',
          img: '/pic_9.jpeg',
          icon: 'solar:cup-first-bold'
        },
        {
          label: 'Taux de réussite élevé',
          description: 'Performances majeures lors des différents examens nationnaux: <b>94,14%</b> d\'admissions au <b>baccalauréat</b> 2025 et <b>95,91%</b> au <b>BEPC</b> 2025.',
          img: '/pic_10.jpeg',
          icon: 'solar:square-academic-cap-bold'
        },
        {
          label: 'Spiritualité accrue',
          description: 'Toutes les séances de travail se commencent et se terminent dans la prière afin de recommander ces moments à Dieu.',
          img: '/pic_11.jpeg',
          icon: 'solar:hand-heart-bold'
        },
        {
          label: 'Activités extra scolaire',
          description: 'Plusieurs activités (gala, journées sportives, journées carrières, etc...) sont organisées pour permettre à nos élèves de faire de nouvelles expériences.',
          img: '/pic_13.jpeg',
          icon: 'solar:confetti-bold'
        },
        {
          label: 'Facilité d\'accès',
          description: 'Nous comptons à ce jours <b>14</b> bases dans plusieurs villes de la Côte d\'Ivoire (Abidjan, Yamoussoukro, etc...) pour facilité l\'accès à notre formation à tout le pays.',
          img: '/pic_14.jpeg',
          icon: 'solar:map-arrow-square-bold'
        },
        {
          label: 'Insertion post-BAC',
          description: 'Nos éléments font parti des meilleurs étudiants des meilleurs Universités du pays (INPHB, ENSEA, UFHB, etc...) et également à l\'étranger.',
          img: '/pic_15.jpeg',
          icon: 'solar:case-minimalistic-bold'
        },
      ]
    }
  }
}

</script>

<template>
  <Swiper />

  <section class="flex flex-col lg:flex-row gap-12 lg:justify-between items-center px-6 lg:px-14 py-16">
    <div class="bg-red-600 py-0 lg:p-12 w-full lg:w-[350px]">
      <NuxtImg src="/pic_8.jpeg" class="h-[200px] lg:h-[320px] mx-auto lg:mx-0 max-w-fit " />
    </div>

    <div class="flex flex-col gap-[30px] lg:w-[410px]">
      <div class="bg-red-600 h-[10px] w-[70px] mb-[-15px]"></div>
      <h1 class="text-3xl lg:text-4xl font-bold">Plus qu'une structure</h1>
      <p>En Activité depuis 2013, l’Excellence Groupe ne se contente pas de dispenser des cours, mais s’engage à guider la jeunesse sur le droit
        chemin en lui insufflant le goût du succès et du travail.</p>
      <NuxtLink to="/about"
        class="text-white bg-red-600 px-3.5 py-2.5 font-bold self-baseline border-2 duration-200 border-red-600 hover:border-yellow-500 hover:text-yellow-500 hover:bg-white"
      >
        LIRE LA SUITE
      </NuxtLink>
    </div>
  </section>

  <section class="px-6 lg:px-14 py-16 bg-gray-100">
    <h1 class="text-3xl lg:text-4xl font-bold text-center">Pourquoi choisir l'Excellence Groupe?</h1>
    <hr class="bg-red-600 h-1.5 w-36 mt-2 mx-auto">
    
    <div class="grid grid-cols-1 lg:grid-cols-3 py-12 gap-12">
      <!-- mobile -->
      <ReasonCard class="lg:hidden" v-for="(r, index) in reasons" :key="r.label" :reason="r" data-aos="fade-up"/>

      <!-- desktop -->
      <ReasonCard class="hidden lg:block" v-for="(r, index) in reasons" :key="r.label" :reason="r" data-aos="fade-up" :data-aos-delay="index * 150"/>
    </div>
  </section>

</template>