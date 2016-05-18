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
  openThumb('.fancybox-bear-b1');
  openThumb('.fancybox-bear-s1');
  openThumb('.fancybox-bear-s2');
  openThumb('.fancybox-bear-s3');
  openThumb('.fancybox-bear-s4');
  openThumb('.fancybox-wolf-g1');

openThumb = (myClass) ->
  $(myClass).fancybox(
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