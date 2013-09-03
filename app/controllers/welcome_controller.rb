class WelcomeController < ApplicationController
  def index
    @hero = Hero.first
    @categories = Category.all.order("position")
  end
end
