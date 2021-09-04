class Decdate < ApplicationRecord
    belongs_to :allplan, foreign_key: 'allplan_id'
    belongs_to :user, foreign_key: 'user_id'

    validates :result, presence: true

end
