# This controller handles all DMCA takedowns
class DmcasController < ApplicationController
  before_action :set_dmca, only: [:show, :edit, :update, :destroy]

  # This is the index page for DMCAs 
  def index
    @dmcas = Dmca.all
  end

  # GET /dmcas/:id where :id is the DMCA id
  # This will display a single DMCA
  def show
  end

  # This will create a new DMCA
  # Route: /dmcas/new
  def new
    @dmca = Dmca.new
  end

  # GET /dmcas/1/edit
  # This will edit an existing DMCA
  def edit
  end

  # POST /dmcas
  # This will create new DMCA
  def create
    @dmca = Dmca.new(dmca_params)

    respond_to do |format|
      if @dmca.save
        format.html { redirect_to @dmca, notice: 'Dmca was successfully created.' }
        format.json { render :show, status: :created, location: @dmca }
      else
        format.html { render :new }
        format.json { render json: @dmca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dmcas/1
  # This route will update a DMCA
  def update
    respond_to do |format|
      if @dmca.update(dmca_params)
        format.html { redirect_to @dmca, notice: 'Dmca was successfully updated.' }
        format.json { render :show, status: :ok, location: @dmca }
      else
        format.html { render :edit }
        format.json { render json: @dmca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dmcas/1
  # This route will destroy/delete a DMCA
  def destroy
    @dmca.destroy
    respond_to do |format|
      format.html { redirect_to dmcas_url, notice: 'Dmca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmca
      @dmca = Dmca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dmca_params
      params.require(:dmca).permit(:name, :description, :lesson_plan)
    end
end
