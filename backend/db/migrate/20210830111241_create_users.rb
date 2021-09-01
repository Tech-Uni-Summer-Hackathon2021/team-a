class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :allplan, foreign_key: true

      t.string :username

      t.timestamps
    end
  end
end
