class CreateResultTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :result_todos do |t|
      t.references :allplan, foreign_key: true
      t.string :decdo

      t.timestamps
    end
  end
end
