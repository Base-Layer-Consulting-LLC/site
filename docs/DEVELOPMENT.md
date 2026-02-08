# Development <!-- omit in toc -->

## Table of Contents <!-- omit in toc -->

- [Initial clone setup](#initial-clone-setup)
- [Taskfile tasks](#taskfile-tasks)
- [Svelte site](#svelte-site)
  - [Theme](#theme)
  - [Components](#components)
- [Docker](#docker)

## Initial clone setup

You will need to do some setup on the first clone to make changes to the website.

- Install tooling
  - With `mise`:
    - Run `mise trust` then `mise install`
  - Without `mise`:
    - Install [node.js](https://nodejs.org)
    - (Optional) Install [Taskfile](https://taskfile.dev) if you want to use `task` commands.
- Create a `.env` file
  - Copy [`site/.env.example`](../site/.env.example) to `.env`.
    - Set values for the `PUBLIC_*` env vars.
- Build the site
  - If using Taskfile:
    - Run `task serve:dev` to start the dev server.
    - Run `task docker:build:dev` and `task docker:run:dev` to build and run the dev site in [a Docker container](../.containers/dev/Dockerfile).
  - If not using Taskfile:
    - `cd` to the [`site/` directory](../site)
    - Run `npm i` to install dependencies.
    - Start the dev server with `npm run dev`.

## Taskfile tasks

This project includes [Taskfile tasks](https://taskfile.dev) for convenience commands. The [`.tasks/` directory](../.tasks/) contains YAML files defining automations, which the [`taskfile.yml` at the repository root](../taskfile.yml) "composes" those tasks into CLI commands.

List all available tasks with `task -l`. Run the tasks with `task <task-name>`.

For example, to build and run the development Docker image:

```shell
task docker:build:dev
task docker:run:dev
```

You can check the dev container logs with:

```shell
task docker:logs:dev
```

And stop the dev container with:

```shell
task docker:stop:dev
```

## Svelte site

This website uses [`SvelteKit`](https://svelte.dev/docs/kit/introduction) and [DaisyUI for components](https://daisyui.com/docs). The source code for the site lives [in the `site/` directory](../site/).

### Theme

The [`site/tailwind.config.js`](../site/tailwind.config.js) file imports DaisyUI and sets the configuration. In development, you can set `themes: all` to enable all themes for quickly testing new looks, but in Production you should limit the `themes:` key in the DaisyUI config to a single theme (or a list of the themes used on the site).

For example, to enable the `nord` theme only:

```js
export default {
    content: ["./src/**/*.{html,js,svelte,ts}"],
    theme: { extend: {} },
    plugins: [daisyui()],
    daisyui: {
        /* Uncomment to load al themes */
        // themes: true,
        /*
            Set a specific theme/list of themes.

            All themes: https://daisyui.com/docs/themes/#list-of-themes
        */
        themes: ["nord"],
        base: true,
        utils: true,
        logs: false
    }
};
```

The theme for the site can be changed in the [`site/src/app.html` file](../site/src/app.html)'s `<html>` tag's `data-theme` property:

```html
<html lang="en" data-theme="your-theme-name">
```

> [!NOTE]
> The theme you set in `data-theme` must be enabled in `tailwind.config.js`. If you set `themes: all`, every theme will be available for testing.
>
> In Production, you should set `themes:` to a list of the theme(s) your site uses, i.e. `themes: ["nord"]`.

### Components

Svelte components are defined in [`site/src/lib/components/`](../site/src/lib/components/). Elements on the site are composed from these components, for example the [nav bar](../site/src/lib/components/Nav/), which is a [DaisyUI `Navbar`](https://daisyui.com/components/navbar/).

After building a component in the `lib/components/` directory, you can import it and embed it on a page like:

```html
<script lang="ts">
    import NavBar from "$lib/components/Nav/NavBar.svelte";
</script>

<ComponentName />
```

Some components accept data properties, like the [`StackedHero`](../site/src/lib/components/StackedHero/). When adding these components to a page, you can pass the properties inside the component embed:

```html
<script lang="ts">
    import StackedHero from "$lib/components/Hero/StackedHero.svelte";
    // Import PUBLIC_* env vars
    import {
        PUBLIC_EMAIL,
        PUBLIC_RESPONSE_TIME,
        PUBLIC_COMPANY,
    } from "$env/static/public";
</script>

<!-- Embed the StackedHero component, passing data properties into the component -->
<StackedHero
    title={PUBLIC_COMPANY}
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
```

## Docker

```txt
...
```
