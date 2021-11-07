class CreateGitHubRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :git_hub_repos do |t|
      t.string :owner
      t.string :name
      t.integer :merged_pr_count

      t.timestamps
    end
  end
end
