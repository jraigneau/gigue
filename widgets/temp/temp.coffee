class Dashing.Temp extends Dashing.Widget
  #@accessor 'current', Dashing.AnimatedValue

  onData: (data) ->
    if data.status
      # clear existing "status-*" classes
      $(@get('node')).attr 'class', (i,c) ->
        c.replace /\bstatus-\S+/g, ''
      # add new class
      $(@get('node')).addClass "status-#{data.status}"
      $(@node).css('background-color', '#FFE413')
    if data.current < 18
      $(@node).css('background-color', '#47BBB3')
    if data.current > 25
      $(@node).css('background-color', '#F64B22')
