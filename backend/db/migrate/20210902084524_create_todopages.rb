class CreateTodopages < ActiveRecord::Migration[6.0]
  def change
    create_table :todopages do |t|
      t.references :allplan, foreign_key: true
      t.text :task

      t.timestamps
    end
  end
end
