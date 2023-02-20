const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  darkMode: 'class',
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Space Grotesk', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        primary: {
          DEFAULT: '#10a2cb',
          '50': '#f0fbff',
          '100': '#dcf6fe',
          '200': '#b0edfd',
          '300': '#8ae3f9',
          '400': '#2ccaf2',
          '500': '#10a2cb',
          '600': '#10789e',
          '700': '#0d5472',
          '800': '#0c3e55',
          '900': '#0a2f42',
        },
        secondary: {
          '50': '#fef1fa',
          '100': '#fee1f5',
          '200': '#fec3e9',
          '300': '#ff75cd',
          '400': '#fe52b7',
          '500': '#f72297',
          '600': '#d11570',
          '700': '#a90a4f',
          '800': '#800a39',
          '900': '#600b2c',
        },  
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
