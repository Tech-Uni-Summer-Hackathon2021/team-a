class Allplan < ApplicationRecord
  has_many :days
  has_many :users

end

# 外部を入れるカラムを創る