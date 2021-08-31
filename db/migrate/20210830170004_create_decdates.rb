class CreateDecdates < ActiveRecord::Migration[5.2]
  def change
    create_table :decdates do |t|
      t.references :allplan, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :dayid 
      t.integer :result

      t.timestamps
    end
  end
end
