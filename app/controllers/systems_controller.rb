class SystemsController < ApplicationController
  respond_to :json

  def index
    respond_with System.all
  end

  def show
    respond_with System.find(params[:id])
  end

  def create
    respond_with System.create(params[:system])
  end

  def update
    respond_with System.update(params[:id], params[:system])
  end

  def destroy
    respond_with System.destroy(params[:id])
  end
end
