class AddFirstNameLastNameToEducators < ActiveRecord::Migration[6.0]
  def change
    add_column :educators, :first_name, :string
    add_column :educators, :last_name, :string
  end
end
