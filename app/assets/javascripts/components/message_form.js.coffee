@MessageForm = React.createClass
  displayName: 'MessageForm'

  getInitialState: ->
    actived: false
    text: ""

  activeForm: ->
    @setState
      actived: true

  deactiveForm: ->
    @setState
      actived: false

  checkTextLength: ->
    @state.text.length == 0

  handleInput: (event) ->
    @setState
      text: event.target.value

  handleSubmit: ->
    @props.handleNewMessage {userName: 'David Bowie', message: "#{@state.text}"}
    React.findDOMNode(@refs.inputField).value = ''
    @deactiveForm()

  render: ->
    submitBtn = classNames
      'submit': true
      'actived': @state.actived
      'disabled': @checkTextLength()

    <form className="message-input-row" action="#" onFocus={@activeForm} onBlur={@deactiveForm}>
      <textarea className="message" name="" id="" placeholder="說些什麼吧..." onChange={@handleInput} ref="inputField"></textarea>
      <button className={submitBtn} disabled={@checkTextLength()} onClick={@handleSubmit}><i className="fa fa-send"></i> 送出留言</button>
    </form>
