
class PupilsController < ApplicationController
  before_action :set_pupil, only: %i[show edit update destroy]

  def index
      @pupils = Pupil.order(:name)
  end

  def show; end

  def new
    @pupil = Pupil.new
  end


  def edit; end

  def create
    @pupil = Pupil.create(pupils_params)
    PictureAttachmentService.attach(@pupil, params['pupil']['pupil_picture'])

    respond_to do |format|
      if @pupil.save
        format.html { redirect_to @pupil, notice: 'Pupil was successfully created.' }
        format.json { render :show, status: :created, location: @pupil }
      else
        format.html { render :new }
        format.json { render json: @pupil.errors, status: :unprocessable_entity }
      end
    end

  end

  def update; end

  def destroy; end




  private

  def set_pupil
    @pupil = Pupil.find(params[:id])
  end

  def pupils_params
    params.require(:pupil).permit(
      :klass,
      :name,
      :food,
      :presence,
      :pupil_picture
    )
  end
end
