class User < ApplicationRecord
  authenticates_with_sorcery!
  before_save { email.downcase! }

  has_many :document
  has_many :bookmark

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  validates_confirmation_of :password
end
