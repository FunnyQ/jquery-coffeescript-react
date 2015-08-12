@UserProfile = React.createClass
  displayName: 'UserProfile'

  getDefaultProps: ->
      user: []
      messages: []

  getInitialState: ->
    actived: false
    text: ""
    user: @props.user
    tweets: @props.user.tweets
    messages: @props.messages

  newMessage: (message) ->
    console.log message
    messages = React.addons.update(@state.messages, {$unshift: [message]})
    @setState
      messages: messages

  render: ->
    <div className="q-container">
      <div className="user-profile-wrapper">

        <UserInfo user={@props.user} />

        <UserStats tweets={@state.tweets} followers={@props.user.followers} following={@props.user.following} />

        <MessageForm handleNewMessage={@newMessage} />

      </div>

      <div className="message-container">
        <h3 className="title">Messages</h3>
          {
            for message in @state.messages
              <MessageUnit userName={message.name} userAvatar={message.avatar} message={message.message} />
          }
      </div>
    </div>
