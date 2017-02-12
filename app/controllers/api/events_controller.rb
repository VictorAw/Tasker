class Api::EventsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    puts 'sup'
    render json: 'Thanks', status: 200
  end
end
