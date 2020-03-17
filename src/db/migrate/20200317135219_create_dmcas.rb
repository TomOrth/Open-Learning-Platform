class CreateDmcas < ActiveRecord::Migration[6.0]
  def change
    create_table :dmcas do |t|
      t.string :name
      t.string :description
      t.integer :lesson_plan_id

      t.timestamps
    end
  end
end
