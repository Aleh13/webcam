
class PupilsController < ApplicationController
  before_action :set_pupil, only: %i[show edit update destroy]

  def index
      @pupils = Pupil.order(:name)
  end

  def show; end

  def new; end

  def edit; end

  def create; end

  def update; end

  def destroy; end




  private

  def set_pupil
    @pupil = Pupil.find(params[:id])
  end


end
