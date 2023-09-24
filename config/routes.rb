require_relative '../router'

Router.draw do
  get('/')
  get 'articles/index'
end
