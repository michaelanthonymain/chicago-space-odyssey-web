class PlanetsController < ApplicationController
  respond_to :json

  def index
    respond_with Planet.all
  end

  def show
    respond_with Planet.find(params[:id])
  end

  def create
    respond_with Planet.create(params[:planet])
  end

  def update
    respond_with Planet.update(params[:id], params[:planet])
  end

  def destroy
    respond_with Planet.destroy(params[:id])
  end
end