# app/controllers/v1/welcome_controller.rb
module V1
  class WelcomeController < ApplicationController
    def index
      render json: 'welcome to the jungle'
    end
  end
end
