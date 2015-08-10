@UserStats = React.createClass
  displayName: 'UserStats'

  render: ->
    <div className="user-stat-row">
      <div className="decoration-box">

      </div>
      <div className="stats-wrapper">
        <div className="tweets-box">
          <span className="number">{@props.tweets}</span>
          <span className="type">TWEETS</span>
        </div>
        <div className="follower-box">
          <span className="number">{@props.followers}</span>
          <span className="type">FOLLOWERS</span>
        </div>
        <div className="following-box">
          <span className="number">{@props.following}</span>
          <span className="type">FOLLOWING</span>
        </div>
      </div>
    </div>
