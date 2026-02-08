<script lang="ts">
  import StackedHero from "$lib/components/Hero/StackedHero.svelte";
  import {
    PUBLIC_EMAIL,
    PUBLIC_RESPONSE_TIME,
    PUBLIC_COMPANY,
  } from "$env/static/public";

  type ConsultingDomain = {
    title: string;
    bullets: string[];
  };

  const domains: ConsultingDomain[] = [
    {
      title: "Infrastructure & Cloud",
      bullets: [
        "Cloud and on-prem infrastructure design",
        "High availability and reliability planning",
        "Capacity planning and performance tuning",
        "Incident response and root-cause analysis",
        "Cost analysis and management",
      ],
    },
    {
      title: "DevOps & Automation",
      bullets: [
        "CI/CD pipeline design and implementation",
        "Deployment automation and release workflows",
        "Operational tooling and developer experience",
        "Reducing toil through automation",
      ],
    },
    {
      title: "Architecture & IaC",
      bullets: [
        "System architecture and platform design",
        "Infrastructure as Code (Terraform, Ansible, etc.)",
        "Versioned, auditable environments",
        "Scalable, repeatable deployment patterns",
      ],
    },
  ];
</script>

<div class="">
  <!-- Hero -->
  <StackedHero
    title={PUBLIC_COMPANY}
    subtitle="Core infrastructure and DevOps consulting for your business."
    backgroundImage="/img/hero-network-points.jpg"
    overlayOpacity={0.4}
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
            class="text-lg sm:text-xl md:text-xl lg:text-2xl font-semibold mb-4 text-center"
          >
            {domain.title}
          </h3>

          <hr class="pb-2" />

          <ul class="space-y-2 text-base-content/80">
            {#each domain.bullets as bullet}
              <li class="flex gap-2 text-sm sm:text-base leading-relaxed">
                <span class="opacity-60">—</span>
                <span>{bullet}</span>
              </li>
            {/each}
          </ul>
        </div>
      {/each}
    </div>
  </div>
</section>

<div class="max-w-6xl mx-auto mb-16"></div>
