<script lang="ts">
  import favicon from "$lib/assets/favicon.svg";

  // import Footer from "$lib/Footer.svelte";
  // import Nav from "$lib/Nav.svelte";
  import NavBar from "$lib/components/Nav/NavBar.svelte";
  import "../app.css";

  let { children } = $props();
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
</svelte:head>

<div class="min-h-screen bg-base-100 text-base-content flex flex-col">
  <!-- <NavBar /> -->

  <main class="container mx-auto p-4 flex-1">
    {@render children()}
  </main>
</div>

<!-- <Footer /> -->
