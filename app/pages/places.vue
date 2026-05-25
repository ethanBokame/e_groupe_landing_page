<script lang="ts">
import { placesData } from '~/data/places.data';

export default {
  setup() {
    useHead({
      title: 'Nos Bases'
    })
  },
  data() {
    return {
      places: placesData,
    }
  }
}
</script>

<template>
  <section class="px-6 md:px-12 lg:px-14 py-8 max-w-[1300px] mx-auto">
    <PageTitle>Nos Bases</PageTitle>
    <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-x-24 gap-y-12 py-12">
      <Place v-for="(p,i) in places" :key="i" :place="p" />
    </div>
  </section>
</template>