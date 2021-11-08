require 'rails_helper'

RSpec.describe GithubRepo, type: :model do
   describe 'relationships' do
    it {should have_many :contributors}
  end

  describe '#name' do
    it 'should return the name of our repo' do
      repo = GithubRepo.create

      expect(repo.name_of_repo).to eq('little-esty-shop')
    end
  end

  describe '#merged_pr_count' do
    it 'should return the number of merged PRs on a repo' do
      repo = GithubRepo.create

      expect(repo.merged_pr_count).to eq(23)
    end
  end
end
