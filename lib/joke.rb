require_relative 'request'

class Joke
  def initialize
    @joke = ''
  end

  def display_joke
    jokes
  end

  private

  def jokes
    api = 'https://api.chucknorris.io/jokes/random?category=food'
    res = Request.new_request(api)
    @joke = res['value']
  end
end
