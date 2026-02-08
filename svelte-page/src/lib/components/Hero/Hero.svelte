<script lang="ts">
  export let title: string;
  export let subtitle: string | null = null;

  export let backgroundImage: string | null = null;
  export let overlayOpacity: number = 0.4;

  // layout / sizing
  export let heightClass: string = "h-screen";
  export let titleSizeClass: string = "text-4xl md:text-5xl";
  export let subtitleSizeClass: string = "text-lg md:text-xl";

  // optional button
  export let buttonText: string | null = null;
  export let buttonHref: string = "#";
</script>

<div
  class={`relative w-full ${heightClass} flex items-center justify-center text-center`}
  style={`
    background-color: black;
    ${
      backgroundImage
        ? `
      background-image: url('${backgroundImage}');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    `
        : ""
    }
  `}
>
  <!-- background overlay ONLY -->
  <div
    class="absolute inset-0 bg-black"
    style="opacity: {overlayOpacity}"
  ></div>

  <!-- content -->
  <div class="relative z-10 w-full px-6 text-white">
    <h1 class={`font-bold leading-tight ${titleSizeClass}`}>
      {title}
    </h1>

    {#if subtitle}
      <p class={`mt-4 ${subtitleSizeClass}`}>
        {subtitle}
      </p>
    {/if}

    {#if buttonText}
      <a href={buttonHref} class="inline-block mt-6 btn btn-primary">
        {buttonText}
      </a>
    {/if}
  </div>
</div>
