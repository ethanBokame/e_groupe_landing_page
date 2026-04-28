<script lang="ts">
import type { Place } from '~/types/Place.type';

export default {
  props: {
    place: {
      type: Object as PropType<Place>,
      required: true
    }
  }
}
</script>

<template>
  <div
    class="fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 z-30 rounded-xl w-[90%] lg:w-[400px] overflow-hidden bg-white">
    <p class="p-2 bg-red-600 text-white text-center">Base de {{ place.town }}</p>
    <div class="p-3 space-y-1">
      <p>
        <b>Addresse: </b>
        {{ place.address }}
      </p>
      <p>
        <b>Numéro: </b>
        <a :href="'tel:' + place.number" class="underline">
          {{ place.number }}
        </a>
      </p>
      <GoogleMap :link="place.google_map" />
      <b>Nous rejoindre avec Yango:</b>
      <YangoButton />
    </div>
  </div>
</template>