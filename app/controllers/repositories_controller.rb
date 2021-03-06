class RepositoriesController < ApplicationController
  def index
    github = GithubService.new(session[:token])
    @repos_array = github.get_repos
  end

  def create
    github = GithubService.new
    github.create_repo(params[:name])
  end
end
