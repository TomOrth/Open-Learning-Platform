class AddDescriptionToLessonPlans < ActiveRecord::Migration[6.0]
  def change
    add_column :lesson_plans, :description, :string
  end
end
