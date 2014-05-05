class TwitterHashtag
  constructor: ->
    @.$el = $ ".hashtag"
    @.showTwitterFeed()
    @.hideTwitterFeed()

  showTwitterFeed: ->
    @.$el.click (event) ->
      event.preventDefault()
      $ "#twitter-popup"
        .fadeToggle 150

  hideTwitterFeed: ->
    $ document
      .click (event) ->
        if $ event.target
          .is ".hashtag a"
            event.preventDefault()
        if !$ event.target
          .is("#twitter-popup") && !$ event.target
            .is ".hashtag a"
              $ "#twitter-popup"
                .fadeOut 150

$ ->
  hashtag = new TwitterHashtag
