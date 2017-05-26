class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "GOP API" }
  end

end
