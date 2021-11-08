class RemoveUsernameFromGithubRepos < ActiveRecord::Migration[5.2]
  def change
    remove_column :github_repos, :username, :string
  end
end
