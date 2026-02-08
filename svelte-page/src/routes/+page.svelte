<script lang="ts">
  import StackedHero from "$lib/components/Hero/StackedHero.svelte";
  import { PUBLIC_EMAIL, PUBLIC_RESPONSE_TIME } from "$env/static/public";
</script>

<div class="py-8">
  <StackedHero
    title="Base Layer Consulting LLC"
    subtitle="Core infrastructure and DevOps consulting for your business."
    backgroundImage="/img/hero-network-points.jpg"
    overlayOpacity={0.28}
    heightClass="h-[75vh]"
    titleSizeClass="text-4xl md:text-7xl"
    subtitleSizeClass="text-xl md:text-3xl"
    email={PUBLIC_EMAIL}
    useFor="General inquiries"
    responseTime={PUBLIC_RESPONSE_TIME}
  />
</div>
