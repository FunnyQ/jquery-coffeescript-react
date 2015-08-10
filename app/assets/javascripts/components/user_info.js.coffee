@UserInfo = React.createClass
  displayName: 'UserInfo'

  getInitialState: ->
    faved: false

  triggerFav: ->
    @setState
      faved: !@state.faved

  render: ->
    favIcon = classNames
      'fa': true
      'fa-heart-o': !@state.faved
      'fa-heart': @state.faved

    <div className="user-info-row">
      <div className="avatar-box">
        <img className="avatar" src="/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg" alt="Avatar 4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae" />
      </div>
      <div className="info-box">
        <span className="name">David Bowie</span>
      </div>
      <a href="#" className="fav-btn" onClick={@triggerFav}>
        <i className={favIcon}></i>
      </a>
    </div>
