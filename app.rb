require 'erb'
require_relative './router'

class App
  attr_reader :router

  def call(env)
    headers = {
      'Content-Type' => 'text/html'
    }

    title = get_title(env)
    response_html = router.build_response(env)

    [200, headers, [response_html]]
  end

  def get_title(env)
    query = env['QUERY_STRING']
    values = query.split('=')
    values[1]
  end

  def html_template
    File.read('views/index.html.erb')
  end

  private

  def router
    Router.instance
  end
end