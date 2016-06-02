define [
    'jquery',
    'cs!app/views/base',
], (
    $,
    base
) ->

    class LoadingIndicatorView extends base.SMItemView
        template: 'loading-indicator'
        events:
            'click .icon-icon-close': 'cancel'
        initialize: (opts) ->
            @text = opts.text
            ###@xhr = opts.xhr
            @$container = opts.$container
            @$container.children().hide()
            @$container.append @el###
        serializeData: ->
            data =
                text: @text
            data
        cancel: (ev) ->
            @xhr?.abort()
            @remove()
        ###remove: () ->
            debugger;
            @$el.remove()
            @$container.children().show()
            super()###