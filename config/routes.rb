require 'erb'
require_relative '../router'

Router.draw do
  erb = ERB.new(html_template)
  get('/') { erb.result(binding) }
  get('/articles') { 'All Articles' }
  get('/articles/1') { 'First Article' }

  get 'articles/index'
end