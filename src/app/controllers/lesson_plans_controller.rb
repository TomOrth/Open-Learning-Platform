class LessonPlansController < ApplicationController
  before_action :set_lesson_plan, only: [:show, :edit, :update, :destroy]

  # GET /lesson_plans/1
  # GET /lesson_plans/1.json
  def show
  end

  # GET /lesson_plans/new
  def new
    @lesson_plan = LessonPlan.new
  end

  # GET /lesson_plans/1/edit
  def edit
  end

  # POST /lesson_plans
  # POST /lesson_plans.json
  def create
    @lesson_plan = LessonPlan.new(lesson_plan_params)
    @lesson_plan.educator_id = current_educator.id
    respond_to do |format|
      if @lesson_plan.save
        format.html { redirect_to current_educator, notice: 'Lesson plan was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_plan }
      else
        format.html { render :new }
        format.json { render json: @lesson_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_plans/1
  # PATCH/PUT /lesson_plans/1.json
  def update
    respond_to do |format|
      if @lesson_plan.update(lesson_plan_params)
        format.html { redirect_to current_educator, notice: 'Lesson plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_plan }
      else
        format.html { render :edit }
        format.json { render json: @lesson_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_plans/1
  # DELETE /lesson_plans/1.json
  def destroy
    @lesson_plan.destroy
    respond_to do |format|
      format.html { redirect_to current_educator, notice: 'Lesson plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_plan
      @lesson_plan = LessonPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_plan_params
      params.require(:lesson_plan).permit(:name, :description, contents: [])
    end
end
