<script lang="ts">
  import NavLinkItem from "./NavLinkItem.svelte";
</script>

<nav class="navbar bg-base-100 shadow-md px-4">
  <div class="flex-1">
    <a class="btn btn-ghost normal-case text-xl" href="/">MySite</a>
  </div>

  <div class="flex-none gap-2">
    <NavLinkItem href="/">Home</NavLinkItem>
    <NavLinkItem href="/about">About</NavLinkItem>
    <NavLinkItem href="/contact">Contact</NavLinkItem>
  </div>
</nav>

<!-- default slot -->
<slot />
