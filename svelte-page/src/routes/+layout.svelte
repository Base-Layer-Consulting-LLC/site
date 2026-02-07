<script lang="ts">
  import favicon from "$lib/assets/favicon.svg";
  // import Footer from "$lib/Footer.svelte";
  import Nav from "$lib/Nav.svelte";

  let { children } = $props();
</script>

<Nav />

<svelte:head>
  <link rel="icon" href={favicon} />
</svelte:head>

{@render children()}

<!-- <Footer /> -->
