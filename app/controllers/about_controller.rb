class AboutController < ApplicationController
  def show
    @about = About.where(key: "About Us").first
    @info = About.all
  end
end
