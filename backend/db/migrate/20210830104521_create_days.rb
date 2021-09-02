class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.references :allplan, foreign_key: true
      t.integer :month
      t.integer :day

      t.timestamps
    end
  end
end
