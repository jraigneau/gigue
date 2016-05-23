class Dashing.Conso extends Dashing.Widget
  #@accessor 'current', Dashing.AnimatedValue

  onData: (data) ->
    if data.status
      # clear existing "status-*" classes
      $(@get('node')).attr 'class', (i,c) ->
        c.replace /\bstatus-\S+/g, ''
      # add new class
      $(@get('node')).addClass "status-#{data.status}"
    if data.current > 3000
      $(@node).css('background-color', '#F64B22')
