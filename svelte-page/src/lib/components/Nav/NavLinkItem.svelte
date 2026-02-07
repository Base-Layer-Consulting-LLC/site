<script lang="ts">
  import { page } from "$app/state"; // reactive store
  let { href, children } = $props<{
    href: string;
    children: () => unknown;
  }>();

  let isActive = $state(false);

  $effect(() => {
    isActive =
      page.url.pathname === href || page.url.pathname.startsWith(href + "/");
  });
</script>

<a
  {href}
  class="btn btn-outline btn-sm rounded-btn"
  class:btn-active={isActive}
  aria-current={isActive ? "page" : undefined}
>
  {@render children()}
</a>
