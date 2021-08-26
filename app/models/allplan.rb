class Allplan < ApplicationRecord
  has_many :detail, foreign_key: 'Detail_id'
end
