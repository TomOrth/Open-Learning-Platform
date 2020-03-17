class AddEducatorToLessonPlans < ActiveRecord::Migration[6.0]
  def change
    add_reference :lesson_plans, :educator, null: false, foreign_key: true
  end
end
