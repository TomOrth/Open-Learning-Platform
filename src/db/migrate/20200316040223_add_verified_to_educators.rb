class AddVerifiedToEducators < ActiveRecord::Migration[6.0]
  def change
     add_column :educators, :verified, :boolean
  end
end
