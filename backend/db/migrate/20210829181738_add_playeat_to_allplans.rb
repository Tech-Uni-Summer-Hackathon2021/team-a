class AddPlayeatToAllplans < ActiveRecord::Migration[5.2]
  def change
    add_column :allplans, :playeat, :string
  end
end
