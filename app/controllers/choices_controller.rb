class ChoicesController < ApplicationController

  def index
    @choices = Choice.all 
  end

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.create(query: params[:choice][:query])
  end

  def show
    FlickRaw.api_key = "3a69a356624bd6af693553b4279b9daf"
    FlickRaw.shared_secret = "c17c8eb13d92a9b5"

    
  end

end

