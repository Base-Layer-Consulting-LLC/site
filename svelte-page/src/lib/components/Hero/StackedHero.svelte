<script lang="ts">
  import ContactCard from "$lib/components/ContactCard/ContactCard.svelte";

  export let title: string;
  export let subtitle: string | null = null;

  export let backgroundImage: string | null = null;
  export let overlayOpacity: number = 0.4;

  // layout / sizing
  export let heightClass: string = "h-screen";
  export let titleSizeClass: string = "text-4xl md:text-5xl"; // <-- add this
  export let subtitleSizeClass: string = "text-lg md:text-xl"; // <-- add this

  // optional button
  export let buttonText: string | null = null;
  export let buttonHref: string = "#";

  // Contact card props
  export let email: string = "";
  export let useFor: string | null = null;
  export let responseTime: string | null = null;
</script>

<div
  class={`relative w-full ${heightClass} flex flex-col items-center justify-center text-center px-6`}
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
  <!-- overlay -->
  {#if overlayOpacity > 0}
    <div
      class="absolute inset-0 bg-black"
      style="opacity: {overlayOpacity}"
    ></div>
  {/if}

  <!-- content -->
  <div class="relative z-10 w-full space-y-8 flex flex-col items-center">
    <!-- Title -->
    <h1
      class={`font-bold leading-tight text-center text-white ${titleSizeClass}`}
    >
      {title}
    </h1>

    <!-- Subtitle -->
    {#if subtitle}
      <p class={`text-white/90 text-center ${subtitleSizeClass}`}>
        {subtitle}
      </p>
    {/if}

    <!-- Optional button -->
    {#if buttonText}
      <a
        href={buttonHref}
        class="
          inline-flex items-center justify-center
          px-8 py-3
          text-base font-semibold
          rounded-lg
          bg-primary text-primary-content
          hover:bg-primary-focus
          transition-colors
        "
      >
        {buttonText}
      </a>
    {/if}

    <!-- Contact card -->
    <div class="w-full sm:w-96 mt-8">
      <ContactCard {email} {useFor} {responseTime} />
    </div>
  </div>
</div>
