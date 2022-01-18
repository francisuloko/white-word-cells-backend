class Cell < ApplicationRecord
  belongs_to :user
  before_save { self.title.downcase! }
end
