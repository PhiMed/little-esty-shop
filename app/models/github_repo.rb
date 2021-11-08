class GithubRepo < ApplicationRecord
    has_many :contributors


    def name_of_repo
        response = (Faraday.get "https://api.github.com/repos/#{self.username}/#{self.name}").body
        body = JSON.parse(response, symbolize_names: true)
        body[:name]
    end

    def merged_pr_count
        response = (Faraday.get "https://api.github.com/search/issues?q=repo:#{self.username}/#{self.name}%20type:pr%20is:merged").body
        body = JSON.parse(response, symbolize_names: true)
        body[:total_count]
    end

end
