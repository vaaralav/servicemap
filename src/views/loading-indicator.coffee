define [
    'cs!app/views/base',
], (
    base
) ->

    class LoadingIndicatorView extends base.SMItemView
        template: 'loading-indicator'
        # events:
        #     'click .language': 'selectLanguage'
        initialize: (opts) ->
            @text = opts.text
        serializeData: ->
            data =
                text: @text
            data
            