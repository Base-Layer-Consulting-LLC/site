<script lang="ts">
  export let title: string = "Welcome!";
  export let subtitle: string = "Your subtitle goes here.";
  export let buttonText: string | null = null;
  export let buttonHref: string = "#";
  export let backgroundImage: string | null = null;
  export let height: string = "100vh";
  export let overlayOpacity: number = 0.4; // optional overlay
</script>

<div
  class="hero relative w-full"
  style="height: {height}; 
         background-color: {backgroundImage ? 'transparent' : 'black'};
         {backgroundImage
    ? `background-image: url('${backgroundImage}'); background-size: cover; background-position: center;`
    : ''}"
>
  {#if backgroundImage && overlayOpacity > 0}
    <div
      class="absolute inset-0"
      style="background-color: rgba(0,0,0,{overlayOpacity})"
    ></div>
  {/if}

  <div
    class="hero-content absolute inset-0 flex flex-col justify-center items-center text-center px-4 text-neutral-content"
  >
    <div class="max-w-2xl">
      <h1 class="mb-5 text-4xl md:text-5xl font-bold">{title}</h1>
      <p class="mb-5 text-lg md:text-xl">{subtitle}</p>
      {#if buttonText}
        <a href={buttonHref} class="btn btn-primary btn-lg">{buttonText}</a>
      {/if}
    </div>
  </div>
</div>
