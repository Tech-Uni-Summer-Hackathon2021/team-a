class CreatePlanLists < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_lists do |t|
      t.integer :dec_dateid
      t.string :dec_date

      t.timestamps
    end
  end
end
