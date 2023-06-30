class MainController < ApplicationController
  def index
    @title = 'Main page'
    flash.now[:notice] = 'Logged in successfully!'
    flash.now[:alert] = 'Invalid email or password!'
  end
    
end