class Document < ApplicationRecord
  belongs_to :user
  has_many :bookmark
end
