class PrototypeController < ApplicationController

  def index
    load_fake_data
  end

  private

  def load_fake_data
    @user = {
      name: 'David Bowie',
      avatar: 'http://jquery-coffeescript-react.dev/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg',
      tweets: 0,
      followers: 12,
      following: 51
    }

    @messages = [
      {id: 1, name: 'Q', avatar: 'http://jquery-coffeescript-react.dev/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg', message: 'test yo!'},
      {id: 2, name: 'winwin', avatar: 'http://jquery-coffeescript-react.dev/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg', message: 'test hey!'},
      {id: 3, name: 'Q', avatar: 'http://jquery-coffeescript-react.dev/assets/avatar-4d57f0dd9681afa915dc78cd72c747b7b1d460ea628e76a1eb897f6db7c0bdae.jpg', message: 'test motherf...'},
    ]
  end

end
