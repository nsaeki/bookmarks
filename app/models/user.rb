class User < ApplicationRecord
  authenticates_with_sorcery!
  before_save { email.downcase! }

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password,
            confirmation: true,
            length: { minimum: 8 },
            if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation,
            presence: true,
            if: -> { new_record? || changes[:crypted_password] }

  has_many :document
  has_many :bookmark
end
