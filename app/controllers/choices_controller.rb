class ChoicesController < ApplicationController

  def index
    @choices = Choice.all 
  end

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.create(query: params[:choice][:query])
    p @choice
  end

end