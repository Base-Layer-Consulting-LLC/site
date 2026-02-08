<script lang="ts">
  import { Mail } from "lucide-svelte";

  export let title: string = "Contact";
  export let email: string = "";
  export let useFor: string | null = null;
  export let responseTime: string | null = null;
</script>

<div
  class="max-w-lg mx-auto shadow-lg rounded-xl overflow-hidden bg-white text-black"
>
  <!-- Header -->
  <div class="px-6 py-4 border-b border-gray-200">
    <h3 class="text-lg text-center font-semibold">{title}</h3>
  </div>

  <!-- Body -->
  <div class="px-6 py-5 space-y-3 text-center">
    <!-- Email row: left-aligned -->
    <div class="flex justify-center items-center gap-2">
      <Mail class="w-5 h-5 text-black" />
      <a href={`mailto:${email}`} class="font-mono hover:underline text-black">
        {email}
      </a>
    </div>

    {#if useFor}
      <div class="text-sm text-black/70">
        <span class="font-semibold uppercase text-xs">Use for:</span>
        {useFor}
      </div>
    {/if}
  </div>

  {#if responseTime}
    <!-- Footer: left-aligned -->
    <div
      class="px-6 py-3 border-t border-gray-200 text-xs text-black/70 text-center"
    >
      <strong>Response time:</strong>
      {responseTime}
    </div>
  {/if}
</div>
