class Api::EventsController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def create
    if params['name'] == 'app.install'
      info = HTTP.get('https://api.flock.co/v1/users.getInfo', params: {token: params['userToken']}).parse
      

    elsif params['name'] == 'app.uninstall'
      puts 'uninstalling'
    end
    render json: 'Thanks', status: 200
  end
end
