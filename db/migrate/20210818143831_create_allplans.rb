class CreateAllplans < ActiveRecord::Migration[5.2]
  def change
    create_table :allplans do |t|
      t.integer :dec_dateid
      t.string :dec_date

      t.timestamps
    end
  end
end
