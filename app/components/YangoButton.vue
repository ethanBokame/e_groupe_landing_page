<script lang="ts">
export default {
  mounted() {
    const script = document.createElement("script")
    script.src = "https://widget.yango.com/js/widget.js" // adapte selon la doc réelle
    script.async = true
    document.body.appendChild(script)
  },
}
</script>

<template>
  <div class="ya-taxi-widget" data-ref="yoursitename" data-size="s" data-theme="normal" data-title="Get a ride"
    data-description="Dubai International Airport" data-use-location="true" data-app="2187871" data-lang="en"
    data-point-b="25.2527999878,55.3643989563"
    data-proxy-url="https://yango.go.link/route?start-lat={start-lat}&start-lon={start-lon}&end-lat={end-lat}&end-lon={end-lon}&adj_adgroup=widget&ref={ref}&adj_t=vokme8e_nd9s9z9&lang=ru&adj_deeplink_js=1&utm_source=widget&adj_fallback=https%3A%2F%2Fyango.com%2Fen_int%2Forder%2F%3Fgfrom%3D{start-lon}%2C{start-lat}%26gto%3D{end-lon}%2C{end-lat}%26ref%3D{ref}">
  </div>
</template>
