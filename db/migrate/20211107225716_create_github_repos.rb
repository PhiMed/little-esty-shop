class CreateGithubRepos < ActiveRecord::Migration[5.2]
  def change
    create_table :github_repos do |t|
      t.string :username
      t.string :name

      t.timestamps
    end
  end
end
