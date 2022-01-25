class User < ApplicationRecord
  has_secure_password
  has_many :cells, -> { order(created_at: :desc) }, dependent: :destroy
  validates :name, :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
