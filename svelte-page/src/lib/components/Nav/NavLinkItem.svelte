<script lang="ts">
  import { page } from "$app/state"; // reactive store
  let { href } = $props<{ href: string }>();

  let isActive = false;

  $effect(() => {
    // highlight if exact path or nested route
    isActive =
      page.url.pathname === href || page.url.pathname.startsWith(href + "/");
  });
</script>

<a
  {href}
  class="btn btn-ghost btn-sm rounded-btn"
  class:btn-active={isActive}
  aria-current={isActive ? "page" : undefined}
>
  <slot />
</a>
