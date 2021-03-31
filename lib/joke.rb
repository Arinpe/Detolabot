require_relative 'request'

class Joke
  def initialize
    @joke = ''
  end

  def display_joke
    get_joke
    joke
  end

  private

  attr_accessor :joke

  def get_joke
    api = 'https://api.chucknorris.io/jokes/random?category=food'
    res = Request.new_request(api)
    @joke = res['value']
  end
end
