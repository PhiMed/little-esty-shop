class AddMergedPrCountToGithubRepos < ActiveRecord::Migration[5.2]
  def change
    add_column :github_repos, :merged_pr_count, :integer
  end
end
