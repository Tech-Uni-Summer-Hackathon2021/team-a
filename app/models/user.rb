class User < ApplicationRecord
    belongs_to :allplan, foreign_key: 'allplan_id'
end
