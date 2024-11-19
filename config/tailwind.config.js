const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/.html',
    './app/helpers/**/.rb',
    './app/javascript//*.js',
    './app/components//.rb',
    './app/views/**/.rb'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('daisyui')
  ],
  daisyui: {
    themes: [
      "emerald",
      "cmyk",
      "luxury",    
      "autumn",
      "night",
      "dark",
      "retro",
      "aqua",
      "dracula",
      "dim"
    ], 
  },
}