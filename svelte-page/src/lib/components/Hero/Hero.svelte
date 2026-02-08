<script lang="ts">
  export let title: string = "Welcome!";
  export let subtitle: string = "Your subtitle goes here.";
  export let buttonText: string | null = null;
  export let buttonHref: string = "#";
  export let backgroundImage: string | null = null;
  export let heightClass: string = "h-screen"; // Tailwind height class
  export let overlayOpacity: number = 0.1; // optional overlay
</script>

<div
  class={`relative w-full ${heightClass} flex justify-center items-center text-center`}
  style={backgroundImage
    ? `background-image: url('${backgroundImage}'); background-size: cover; background-position: center; background-repeat: no-repeat;`
    : "background-color: black;"}
>
  {#if backgroundImage && overlayOpacity > 0}
    <div
      class="absolute inset-0"
      style="background-color: rgba(0,0,0,{overlayOpacity});"
    ></div>
  {/if}

  <!-- Hero content -->
  <div class="relative z-10 max-w-2xl px-4 text-white">
    <h1 class="mb-5 text-4xl md:text-5xl font-bold">{title}</h1>
    <p class="mb-5 text-lg md:text-xl">{subtitle}</p>
    {#if buttonText}
      <a href={buttonHref} class="btn btn-primary btn-lg">{buttonText}</a>
    {/if}
  </div>
</div>
