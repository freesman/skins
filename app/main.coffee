Backbone = require('backbone')
Epoxy = require('backbone.epoxy')
require('jquery-mousewheel')
fancybox = require('./scripts/fancybox/jquery.fancybox')
require('./scripts/fancybox/jquery.fancybox-thumbs')
header = require('./header/header')
$('header').append(header)

content = require('./content/content')
$('section').append(content)

AppView = Backbone.View.extend(
  el: 'body'
  events:
    'click #fancybox-thumbs a' : 'openThumbImg'
  openThumbImg: (e)->
    $.fancybox.jumpto($(e.currentTarget).attr('data-id'))
)

appView = new AppView

thumbsFunction = ->
  $(".fancybox-thumb").fancybox(
    prevEffect : 'none'
    nextEffect  : 'none'
    helpers :
      title :
        type: 'outside'
      thumbs :
        width : 50
        height : 50
  )
$(document).ready(thumbsFunction);