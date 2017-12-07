require File.expand_path '../spec_helper.rb', __FILE__
require 'pry'

set :environment, :test

describe 'Hinter service' do
  include Rack::Test::Methods

  def app
    Application.new
  end

  it "should be ok" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should return hello" do
    get '/'
    expect(last_response.body).to include('Congratulations! You are awasome! Service works!')
  end

  it "should not say hello" do
    get '/something'
    expect(last_response).to_not be_ok
  end
end
