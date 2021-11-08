require 'rails_helper'

RSpec.describe Contributor, type: :model do
   describe 'relationships' do
    it {should belong_to :github_repo}
   end
end
