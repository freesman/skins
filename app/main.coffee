Backbone = require('backbone')
Epoxy = require('backbone.epoxy')

header = require('./header/header')
$('header').append(header)

content = require('./content/content')
$('section').append(content)

hideLogo = ->
  headerWidth = $('[data-js-header]').width()
  logo = $('[data-js-logo]')
  if headerWidth < 900
    logo.fadeOut('1000')
  else
    logo.fadeIn('1000')
$(window).resize(hideLogo)