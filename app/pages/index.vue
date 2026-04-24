<template>
  <Swiper />
  <div class="flex justify-between items-center px-14 py-16">
    <div class="bg-red-600 p-12 w-[350px]">
      <NuxtImg src="/pic_8.jpeg" class="h-[320px] max-w-fit " />
    </div>

    <div class="flex flex-col gap-[30px] w-[410px]">
      <div class="bg-red-600 h-[10px] w-[70px] mb-[-15px]"></div>
      <h1 class="text-4xl font-bold">Plus qu'une structure</h1>
      <p>L’Excellence Groupe ne se contente pas de dispenser des cours, mais s’engage à guider la jeunesse sur le droit chemin en lui insufflant le goût du succès et du travail.</p>
      <NuxtLink to="/about" class="text-white bg-red-600 px-3.5 py-2.5 font-bold self-baseline border-2 duration-200 border-red-600 hover:border-yellow-300 hover:text-yellow-300 hover:bg-white">
        LIRE LA SUITE
      </NuxtLink>
    </div>
  </div>

</template>