class WelcomeController < ApplicationController
  def index
    @flower = Flower.new()
  end
end
