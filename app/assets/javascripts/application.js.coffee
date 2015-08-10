# *************************************
#
#   application.js
#
#
# *************************************
#= require _plugins
#= require _app-base
class NotTwitter.UserProfile
  constructor: ->
    @favBtn = new FavBtn
    @messageBox = new MessagesBox

class FavBtn
  constructor: ->
    @favBtn = $('[data-behavior="fav-button"]')
    @favIcon = @favBtn.find('[data-behavior="icon"]')
    @setEvent()

  setEvent: ->
    @favBtn.on 'click', @triggerFavBtn

  triggerFavBtn: =>
    if @favIcon.hasClass('faved')
      @favIcon.removeClass('fa-heart faved').addClass('fa-heart-o')
    else
      @favIcon.removeClass('fa-heart-o').addClass('fa-heart faved')

class MessagesBox
  constructor: ->
    @form = $('[data-behavior="message-form"]')
    @textarea = @form.find('[data-behavior="textarea"]')
    @submitBtn = @form.find('[data-behavior="submit"]')
    @messagesWrapper = $('[data-behavior="messages"]')
    @submitBtn.prop('disabled', true).addClass('disabled')
    @setEvent()

  setEvent: ->
    @textarea.on 'focus', @showSubmitBtn
    @textarea.on 'blur', @hideSubmitBtn
    @textarea.on 'input', @checkTextareaLength
    @submitBtn.on 'click', @sendContent

  showSubmitBtn: =>
    @submitBtn.fadeIn()

  hideSubmitBtn: =>
    @submitBtn.fadeOut()

  checkTextareaLength: =>
    if @textarea.val().length > 0
      @submitBtn.prop('disabled', false).removeClass('disabled')
    else
      @submitBtn.prop('disabled', true).addClass('disabled')

  sendContent: =>
    content = @textarea.val()
    html = "
      <div class='message-unit'>
        <div class='info-col'>
          <div class='avatar-box'>
            <img class='avatar' src='/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg' alt='Avatar 4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae'>
          </div>
          <div class='name-box'>
            <span>David Bowie</span>
          </div>
        </div>
        <div class='message-col'>
          <span>#{content}</span>
        </div>
      </div>
    "
    @messagesWrapper.prepend(html)
    @textarea.val('')
