/** @type {import('tailwindcss').Config} */
import daisyui from "daisyui";

export default {
    content: ["./src/**/*.{html,js,svelte,ts}"],
    theme: { extend: {} },
    plugins: [daisyui()],
    daisyui: {
        /* Uncomment to load al themes */
        themes: true,
        /*
            Set a specific theme/list of themes.

            All themes: https://daisyui.com/docs/themes/#list-of-themes
        */
        // themes: ["nord", "light", "dark"],
        base: true,
        utils: true,
        logs: false
    }
};
