# Development <!-- omit in toc -->

## Table of Contents <!-- omit in toc -->

- [Initial clone setup](#initial-clone-setup)
- [Taskfile tasks](#taskfile-tasks)
- [Svelte site](#svelte-site)
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

```txt
...
```

## Docker

```txt
...
```
