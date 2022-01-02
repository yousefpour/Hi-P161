class ArticlesController < ApplicationController
  def index
  @message = ENV['message']
  end
end
