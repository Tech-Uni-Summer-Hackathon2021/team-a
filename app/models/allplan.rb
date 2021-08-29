class Allplan < ApplicationRecord
  has_many :details, foreign_key: 'Detail_id'
end
