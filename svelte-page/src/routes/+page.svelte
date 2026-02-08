<script lang="ts">
  import StackedHero from "$lib/components/Hero/StackedHero.svelte";
  import { PUBLIC_EMAIL, PUBLIC_RESPONSE_TIME } from "$env/static/public";

  type ConsultingDomain = {
    title: string;
    description: string;
  };

  const domains: ConsultingDomain[] = [
    {
      title: "Infrastructure",
      description:
        "Planning, deploying, and troubleshooting robust infrastructure for businesses of all sizes. From cloud architecture to on-prem systems, I ensure reliability and scalability.",
    },
    {
      title: "DevOps & Automation",
      description:
        "Implementing CI/CD pipelines, automating workflows, and improving operational efficiency. Streamlining business and development processes for faster, safer deployments.",
    },
    {
      title: "Architecture & IaC",
      description:
        "Designing system architectures and defining Infrastructure as Code practices. Building repeatable, versioned, and auditable deployments that scale with your business.",
    },
  ];
</script>

<div class="pt-16">
  <!-- Hero -->
  <StackedHero
    title="Base Layer Consulting LLC"
    subtitle="Core infrastructure and DevOps consulting for your business."
    backgroundImage="/img/hero-network-points.jpg"
    overlayOpacity={0.28}
    heightClass="h-[75vh] md:h-[40vh]"
    titleSizeClass="text-3xl sm:text-4xl md:text-5xl lg:text-7xl"
    subtitleSizeClass="text-base sm:text-lg md:text-xl lg:text-2xl"
    email={PUBLIC_EMAIL}
    useFor="General inquiries"
    responseTime={PUBLIC_RESPONSE_TIME}
  />
</div>

<!-- About -->
<section class="bg-base-100 px-6 py-16 md:py-24">
  <div class="max-w-4xl mx-auto text-center space-y-6">
    <h1 class="text-2xl sm:text-3xl md:text-4xl font-bold">About</h1>
    <p class="text-base sm:text-lg md:text-lg lg:text-xl leading-relaxed">
      I have over 10 years of experience in infrastructure and DevOps, building
      and supporting systems for organizations ranging from small businesses to
      billion-dollar enterprises. My focus is on creating reliable, scalable,
      and automated systems that let businesses run efficiently.
    </p>
  </div>
</section>

<!-- Services -->
<section class="bg-base-200 px-6 py-16 md:py-24">
  <div class="max-w-6xl mx-auto">
    <h2
      class="text-2xl sm:text-3xl md:text-4xl font-bold text-center mb-8 md:mb-12"
    >
      Services
    </h2>
    <div class="grid gap-6 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
      {#each domains as domain}
        <div
          class="p-6 bg-base-100 rounded-lg shadow hover:shadow-md transition"
        >
          <h3
            class="text-lg sm:text-xl md:text-xl lg:text-2xl font-semibold mb-3"
          >
            {domain.title}
          </h3>
          <p
            class="text-base-content/80 text-sm sm:text-base md:text-base leading-relaxed"
          >
            {domain.description}
          </p>
        </div>
      {/each}
    </div>
  </div>
</section>

<div class="max-w-6xl mx-auto mb-16"></div>
