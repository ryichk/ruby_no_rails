class ArticlesController < ApplicationController
  def index
    @title = 'All Articles'
    @article = Article.new(title: 'Ruby no Rails', body: "Let's build a web application in Ruby, without Rails!")
  end
end
