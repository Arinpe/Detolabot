require_relative '../lib/joke'

describe Joke do
  let(:joke) { Joke.new }

  it 'should create a joke instance' do
    expect(joke).to be_an_instance_of Joke
  end

  it 'should return a joke' do
    res = joke.display_joke
    expect(res).to be_a String
  end

  it 'should return a joke that contains food' do
  end
end