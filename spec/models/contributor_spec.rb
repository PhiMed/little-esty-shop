require 'rails_helper'

RSpec.describe Contributor, type: :model do
   describe 'relationships' do
    it {should belong_to :git_hub_repo}
   end
end
