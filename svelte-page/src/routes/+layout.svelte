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

<NavBar />

<main class="p4">
  {@render children()}
</main>

<!-- <Footer /> -->
