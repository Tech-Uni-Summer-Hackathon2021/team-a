class Allplan < ApplicationRecord
  has_many :days
  has_many :users
  has_many :decdates
  has_many :todopages
end

# 外部を入れるカラムを創る