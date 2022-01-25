require 'rails_helper'

RSpec.describe Cell, type: :model do
  describe 'Association' do
    it { should belong_to(:user) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
  end
end
