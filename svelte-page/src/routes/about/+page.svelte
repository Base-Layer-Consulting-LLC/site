<script lang="ts">
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

<div class="max-w-6xl mx-auto px-6 py-12 space-y-12">
  <!-- Intro / Blurb -->
  <section class="space-y-4 text-base-content">
    <h1 class="text-3xl font-bold">About</h1>
    <p class="text-lg leading-relaxed">
      I have over 10 years of experience in infrastructure and DevOps, building
      and supporting systems for organizations ranging from small businesses to
      billion-dollar enterprises. My focus is on creating reliable, scalable,
      and automated systems that let businesses run efficiently.
    </p>
  </section>

  <!-- Consulting Domains Section -->
  <section class="space-y-6">
    <h2 class="text-2xl font-semibold">Available Services</h2>
    <div class="grid gap-6 md:grid-cols-3">
      {#each domains as domain}
        <div
          class="p-6 bg-base-200 rounded-lg shadow hover:shadow-md transition"
        >
          <h3 class="text-xl font-semibold mb-3">{domain.title}</h3>
          <p class="text-base-content/80 leading-relaxed">
            {domain.description}
          </p>
        </div>
      {/each}
    </div>
  </section>
</div>
