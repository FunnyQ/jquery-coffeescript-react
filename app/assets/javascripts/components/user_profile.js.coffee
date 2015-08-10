@UserProfile = React.createClass
  displayName: 'UserProfile'

  getInitialState: ->
    faved: false

  triggerFav: ->
    @setState
      faved: !@state.faved

  render: ->
    wrapperClasses = classNames
      'fa': true
      'fa-heart-o': !@state.faved
      'fa-heart': @state.faved


    <div className="q-container">
      <div className="user-profile-wrapper">

        <div className="user-info-row">
          <div className="avatar-box">
            <img className="avatar" src="/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg" alt="Avatar 4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae" />
          </div>
          <div className="info-box">
            <span className="name">David Bowie</span>
          </div>
          <a href="#" className="fav-btn" onClick={@triggerFav}>
            <i className={wrapperClasses}></i>
          </a>
        </div>

        <div className="user-stat-row">
          <div className="decoration-box">

          </div>
          <div className="stats-wrapper">
            <div className="tweets-box">
              <span className="number">{"0"}</span>
              <span className="type">TWEETS</span>
            </div>
            <div className="follower-box">
              <span className="number">{"0"}</span>
              <span className="type">FOLLOWERS</span>
            </div>
            <div className="following-box">
              <span className="number">{"0"}</span>
              <span className="type">FOLLOWING</span>
            </div>
          </div>
        </div>

        <form className="message-input-row" action="#">
          <textarea className="message" name="" id="" placeholder="說些什麼吧..."></textarea>
          <button className="submit"><%= icon 'send' %> 送出留言</button>
        </form>

      </div>

      <div className="message-container">
        <h3 className="title">Messages</h3>

          <div className="message-unit">
            <div className="info-col">
              <div className="avatar-box">
                <img className="avatar" src="/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg" alt="Avatar 4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae" />
              </div>
              <div className="name-box">
                <span>David Bowie</span>
              </div>
            </div>
            <div className="message-col">
              <span>123</span>
            </div>
          </div>

      </div>
    </div>
