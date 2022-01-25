class Cell < ApplicationRecord
  belongs_to :user
  before_save { title.downcase! }
  validates :title, presence: true
end
