require_relative '../lib/request'

describe Request do
  it 'should make http request and return an Array' do
    res = Request.new_request('https://type.fit/api/quotes')
    expect(res).to be_a Array
  end

  it 'should make http request and return a Hash' do
    res = Request.new_request('https://api.chucknorris.io/jokes/random?category=food')
    expect(res).to be_a Hash
  end
end
