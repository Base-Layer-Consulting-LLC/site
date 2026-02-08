<script lang="ts">
  import Hero from "$lib/components/Hero/Hero.svelte";
  import ContactCard from "$lib/components/ContactCard/ContactCard.svelte";
  import { PUBLIC_RESPONSE_TIME, PUBLIC_EMAIL } from "$env/static/public";
</script>

<div class="py-2">
  <Hero
    title="Base Layer Consulting LLC"
    subtitle="Core infrastructure and DevOps consulting for your business."
    backgroundImage="/img/hero-network-points.jpg"
    overlayOpacity={0.2}
    heightClass="h-[50vh]"
    titleSizeClass="text-4xl md:text-6xl"
    subtitleSizeClass="text-xl md:text-2xl"
  />
</div>

<div class="container py-8">
  <ContactCard
    email={PUBLIC_EMAIL}
    useFor="General inquiries"
    responseTime={PUBLIC_RESPONSE_TIME}
  />
</div>
