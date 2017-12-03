class AboutController < ApplicationController
  def show
    @info = About.all;
  end
end
