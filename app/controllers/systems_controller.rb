class SystemsController < ApplicationController
  def show
    @system = System.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
end
