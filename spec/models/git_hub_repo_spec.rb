require 'rails_helper'

RSpec.describe GitHubRepo, type: :model do
   describe 'relationships' do
    it {should have_many :contributors}
  end
end
