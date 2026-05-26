<script lang="ts">
import type { Place } from '~/types/Place.type';

export default {
  props: {
    place: {
      type: Object as PropType<Place>,
      required: true 
    }
  },
  mounted() {
    // add script dynamically
    const script = document.createElement("script")
    script.src = "//yastatic.net/taxi-widget/ya-taxi-widget.js" // adapte selon la doc réelle
    script.async = true
    document.body.appendChild(script)

    // Remove info icon after script loading
    script.onload = () => {
      document.querySelector(".ya-taxi-widget__info-icon").style.display = 'none';
    };
  },
}
</script>

<template>
  <div 
    class="ya-taxi-widget w-full" 
    data-ref="yoursitename" 
    data-size="s" 
    data-theme="normal" 
    :data-title="`E-Groupe ${place.town}`"
    :data-description="place.address" 
    data-use-location="true" 
    data-app="2187871" 
    data-lang="en"
    :data-point-b="`${place.lat},${place.lon}`"
    :data-proxy-url="`https://yango.go.link/route?start-lat={start-lat}&start-lon={start-lon}&end-lat=${place.lat}&end-lon=${place.lon}&adj_adgroup=widget&ref={ref}&adj_t=vokme8e_nd9s9z9&lang=ru&adj_deeplink_js=1&utm_source=widget&adj_fallback=https%3A%2F%2Fyango.com%2Fen_int%2Forder%2F%3Fgfrom%3D{start-lon}%2C{start-lat}%26gto%3D{end-lon}%2C{end-lat}%26ref%3D{ref}`"
  >
  </div>
</template>
