class User < ApplicationRecord
    belongs_to :allplan, foreign_key: 'allplan_id'
    has_many :decdates

    validates :username, presence: true
    validates :username, uniqueness: { scope: :allplan_id }
end
