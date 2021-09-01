class Allplan < ApplicationRecord
  has_many :days
  has_many :users
  has_many :decdates
end

# 外部を入れるカラムを創る