module.exports = (grunt, options) ->
  return {
    options:
      baseUrl: '<%= build %>/js'
      include: ['main']
#      exclude: ['coffee-script']
      out: '<%= build %>/js/bundle.js'
      stubModules: ['cs']
      mainConfigFile: '<%= assets %>/app.build.js'
      generateSourceMaps: true
      preserveLicenseComments: false
      findNestedDependencies: true
      packages: [
        {name: 'cs', location: '../vendor', main: 'cs'}
        {name: 'coffee-script', location: '../vendor', main: 'coffee-script'}
      ]
      paths:
        app: 'app'
        backbone: '../vendor/backbone'
        'backbone.babysitter': '../vendor/backbone.babysitter'
        'backbone.marionette': '../vendor/backbone.marionette'
        'backbone.wreqr': '../vendor/backbone.wreqr'
        bootstrap: '../vendor/bootstrap'
        'bootstrap-datetimepicker': '../vendor/bootstrap-datetimepicker.min'
        'bootstrap-tour': '../vendor/bootstrap-tour'
        CSSPlugin: '../vendor/CSSPlugin'
        cs: '../vendor/cs'
        'coffee-script': '../vendor/coffee-script'
        EasePack: '../vendor/EasePack'
        harvey: '../vendor/harvey'
        i18next: '../vendor/i18next'
        iexhr: '../vendor/iexhr'
        IPv6: '../vendor/IPv6'
        jquery: '../vendor/jquery'
        leaflet: '../vendor/leaflet-src'
        'leaflet.activearea': '../vendor/leaflet.activearea'
        'leaflet.markercluster': '../vendor/leaflet.markercluster'
        'leaflet.snogylop': '../vendor/leaflet.snogylop'
        moment: '../vendor/moment'
        raven: '../vendor/raven'
        proj4: '../vendor/proj4'
        proj4leaflet: '../vendor/proj4leaflet'
        punycode: '../vendor/punycode'
        SecondLevelDomains: '../vendor/SecondLevelDomains'
        spin: '../vendor/spin'
        'typeahead.bundle': '../vendor/typeahead.bundle'
        TweenLite: '../vendor/TweenLite'
        underscore: '../vendor/underscore'
        URI: '../vendor/URI'
      shim:
        'bootstrap':
          deps: ['jquery']
        'backbone':
          deps: ['underscore', 'jquery']
          exports: 'Backbone'
        'backbone.babysitter':
          deps: ['backbone']
        'typeahead.bundle':
          deps: ['jquery']
        'TweenLite':
          deps: ['CSSPlugin', 'EasePack']
        'leaflet.markercluster':
          deps: ['leaflet']
        'leaflet.activearea':
          deps: ['leaflet']
        'bootstrap-datetimepicker':
          deps: ['bootstrap']
        'bootstrap-tour':
          deps: ['bootstrap']
        'i18next':
          exports: 'i18n'
        'iexhr':
          deps: ['jquery']
        'leaflet.snogylop':
          deps: ['leaflet']
    dist:
      options:
        optimize: 'none' # or 'uglify2'
    config:
      'cs!app/p13n':
        localStorageEnabled: true
  }