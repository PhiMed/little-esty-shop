class CreateContributors < ActiveRecord::Migration[5.2]
  def change
    create_table :contributors do |t|
      t.string :username
      t.integer :commit_count
      t.references :git_hub_repo, foreign_key: true

      t.timestamps
    end
  end
end
