class User < ApplicationRecord
  has_many :docuemnt
  has_many :bookmark
end
