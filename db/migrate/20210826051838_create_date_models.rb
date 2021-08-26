class CreateDateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :date_models do |t|
      t.integer :user_id
      t.integer :date_id
      t.string :available

      t.timestamps
    end
  end
end
