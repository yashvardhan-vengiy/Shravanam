import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        saffron: {
          50: "#fff8ed",
          100: "#ffefcf",
          500: "#f97316",
          600: "#ea580c",
          700: "#c2410c"
        },
        cream: "#fff8ed"
      },
    },
  },
  plugins: [],
};
export default config;
