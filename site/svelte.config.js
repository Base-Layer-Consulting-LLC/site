import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';
import { defineConfig } from 'vite';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	preprocess: vitePreprocess(),

	kit: {
		// adapter-auto only supports some environments, see https://svelte.dev/docs/kit/adapter-auto for a list.
		// If your environment is not supported, or you settled on a specific environment, switch out the adapter.
		// See https://svelte.dev/docs/kit/adapters for more information about adapters.
		adapter: adapter({
			pages: 'build',
			assets: 'build',
			fallback: undefined,
			precompress: false,
			strict: true
		})
	},
	paths: {
		base: '',
	},
	prerender: {
		default: true
	}
};

export default defineConfig({
	...config,
	build: {
		minify: 'terser',
		terserOptions: {
			format: {
				comments: false // remove all comments
			},
			compress: {
				drop_console: true // remove console logs
			}
		}
	}
});
