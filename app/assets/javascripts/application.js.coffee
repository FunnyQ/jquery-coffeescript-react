# *************************************
#
#   application.js
#
#
# *************************************
#= require _plugins
#= require _app-base
NotTwitter.favBtnInit = ->
  favBtn = $('[data-behavior="fav-button"]')
  favIcon = favBtn.find('[data-behavior="icon"]')

  favBtn.on 'click', ->
    triggerFavBtn()

  triggerFavBtn = ->
    if favIcon.hasClass('fa-heart')
      favIcon.removeClass('fa-heart').addClass('fa-heart-o')
    else
      favIcon.removeClass('fa-heart-o').addClass('fa-heart')

NotTwitter.inputInit = ->
  form = $('[data-behavior="message-form"]')
  textarea = form.find('[data-behavior="textarea"]')
  submitBtn = form.find('.submit')

  # init
  submitBtn.prop('disabled', true).addClass('disabled')

  submitBtn.on 'click', ->
    clearTextarea()

  textarea.on 'focus', ->
    submitBtn.fadeIn()

  textarea.on 'blur', ->
    submitBtn.fadeOut()

  textarea.on 'input', ->
    checkTextareaLength($(@))

  clearTextarea = ->
    textarea.val('')

  checkTextareaLength = (textarea)->
    if textarea.val().length > 0
      submitBtn.prop('disabled', false).removeClass('disabled')
    else
      submitBtn.prop('disabled', true).addClass('disabled')
