class ListItem
  constructor: ->
    self = @
    @.$el = $ '.list-item'
    @.$el.click (event) ->
      clickTarget = event.currentTarget
      self.changeColors self, event, clickTarget
      self.getPlanetData clickTarget
  changeColors: (self, event, clickTarget) ->
    self.removeHighlighterClass clickTarget
    self.addBackgroundClass clickTarget
    self.removeBackgroundClass clickTarget
    self.addHighlighterClass clickTarget
  addHighlighterClass: (clickTarget) ->
    $ clickTarget
      .addClass 'highlighter'
  removeHighlighterClass: (clickTarget) ->
    $ clickTarget
      .siblings()
        .removeClass 'highlighter'
  addBackgroundClass: (clickTarget) ->
    $ clickTarget
      .siblings()
        .addClass 'background'
  removeBackgroundClass: (clickTarget) ->
    $ clickTarget
      .removeClass 'background'
  getPlanetData: (clickTarget) ->
    planetId = $ clickTarget
      .attr 'planet-id'
    $.get 'systems/show/'+ planetId, planetId, (response) ->

$ ->
  item = new ListItem
  clickTarget = ''

# Test class additions and removals, spy on ajax to see that call is being made
# Test that constructor sets variables correctly