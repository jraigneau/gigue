class Dashing.Trafficy extends Dashing.Widget
  #@accessor 'current', Dashing.AnimatedValue

  onData: (data) ->
    if data.status
      # clear existing "status-*" classes
      $(@get('node')).attr 'class', (i,c) ->
        c.replace /\bstatus-\S+/g, ''
      # add new class
      $(@get('node')).addClass "status-#{data.status}"
    if data.delay < 5
      $(@node).css('background-color', '#74f229')
    if data.delay > 30
      $(@node).css('background-color', '#e64141')
