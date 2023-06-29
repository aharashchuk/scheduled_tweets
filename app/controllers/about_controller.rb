class AboutController < ApplicationController
  def index
    @title = 'About Us'
    @content = 'This is the about page'
  end
    
end