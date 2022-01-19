class Cell < ApplicationRecord
  belongs_to :user
  before_save { title.downcase! }
end
