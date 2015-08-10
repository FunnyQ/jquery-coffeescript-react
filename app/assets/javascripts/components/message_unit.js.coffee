@MessageUnit = React.createClass

  render: ->
    <div className="message-unit">
      <div className="info-col">
        <div className="avatar-box">
          <img className="avatar" src="/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg" alt="Avatar 4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae" />
        </div>
        <div className="name-box">
          <span>{@props.userName}</span>
        </div>
      </div>
      <div className="message-col">
        <span>{@props.message}</span>
      </div>
    </div>
