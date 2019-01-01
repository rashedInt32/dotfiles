module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 19,

    // font family with optional fallbacks
    fontFamily: 'PowerlineSymbols, "mononoki Nerd Font Mono"',

    fontWeight: 'normal',
    fontWeightBold: 'normal',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#719c6e',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BEAM',

    // color of the text
    foregroundColor: 'rgb(131,148,150)',


    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#000',

    // custom css to embed in the main window
    css: ` .tab_textInner span span, .tabs_title span span {display: none !important}`,

    // custom css to embed in the terminal window
    termCSS: '',

    // for some rainbow color text  x-row {background: linear-gradient(330deg, #e05252 0%, #99e052 25%, #52e0e0 50%, #9952e0 75%, #e05252 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent}

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',



    modifierKeys: {
     altIsMeta: true
   },

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },


    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: 'SOUND',

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hypertheme',
    "hyperterm-deep-space",
    "hyperterm-blink",
    "hyperterm-close-on-left",
    "hypercwd",
    "hyperterm-tab-icons",
    "hyperlinks",
    //"hyperterm-chesterish"
    "hyperterm-tabs",
    "hyper-statusline"
  ],

  hyperStatusLine: {
    dirtyColor: 'pink',
  },

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
