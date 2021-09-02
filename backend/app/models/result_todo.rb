class ResultTodo < ApplicationRecord
    belongs_to :allplan, foreign_key: 'allplan_id'

    validates :allplan_id, uniqueness: true

end
