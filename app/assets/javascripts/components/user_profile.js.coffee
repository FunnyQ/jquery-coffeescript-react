@UserProfile = React.createClass
  displayName: 'UserProfile'

  getDefaultProps: ->
      userName: 'David Bowie'
      tweets: 0
      followers: 23
      following: 51
      messages: [
        {id: 1, userName: 'Q', message: 'this is a test'},
        {id: 2, userName: 'winwin', message: 'this is a test, too'},
      ]

  getInitialState: ->
    actived: false
    text: ""
    tweets: @props.tweets
    messages: @props.messages

  newMessage: (message) ->
    console.log message
    messages = React.addons.update(@state.messages, {$unshift: [message]})
    @setState
      messages: messages

  render: ->
    <div className="q-container">
      <div className="user-profile-wrapper">

        <UserInfo />

        <UserStats tweets={@state.tweets} followers={@props.followers} following={@props.following} />

        <MessageForm handleNewMessage={@newMessage} />

      </div>

      <div className="message-container">
        <h3 className="title">Messages</h3>
          {
            for message in @state.messages
              <MessageUnit userName={message.userName} message={message.message} />
          }
      </div>
    </div>
