class EducatorsController < ApplicationController
  before_action :set_educator, only: [:update, :show]
  def show
  end

  def update
    respond_to do |format|
      if @educator.update(educator_params)
        format.html { redirect_to @educator, notice: 'Paperwork successfully updated.' }
        format.json { render :show, status: :ok, location: @educator }
      else
        format.html { render :edit }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  def verify
    @educator = Educator.find(params[:id])
    respond_to do |format|
      if @educator.update(verified: true)
        format.html { redirect_to current_admin, notice: 'Educator successfully verified.' }
        format.json { render current_admin, status: :ok, location: @educator }
      else
        format.html { redirect_to current_admin }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def set_educator
    @educator = current_educator
  end
  def educator_params
    params.require(:educator).permit(:paperwork)
  end
end
