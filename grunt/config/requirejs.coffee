module.exports = (grunt, options) ->
  return {
    options:
      baseUrl: '<%= build %>/js'
      exclude: ['coffee-script']
      stubModules: ['cs']
      mainConfigFile: '<%= build %>/js/app/config.js'
      optimize: 'uglify2'
      generateSourceMaps: true
      preserveLicenseComments: false
      findNestedDependencies: true
      useSourceUrl: true
    app:
      options:
        include: ['app/main']
        out: '<%= build %>/js/bundle.js'
    embed:
      options:
        include: ['app/main-embed']
        out: '<%= build %>/js/embed.js'
  }
