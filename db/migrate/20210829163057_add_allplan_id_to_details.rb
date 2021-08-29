class AddAllplanIdToDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :details, :allplan_id, :integer
  end
end
