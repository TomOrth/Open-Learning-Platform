class AddTopicToLessonPlan < ActiveRecord::Migration[6.0]
  def change
    add_column :lesson_plans, :topic, :string
  end
end
