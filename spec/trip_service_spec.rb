require File.dirname(__FILE__) + '/../service'
require 'spec'
require 'spec_helper'

set :enviroment, :test

def app
  Sinatra::Application
end

describe "service" do
  before(:each) do
    Trip.delete_all
  end

  it "should return a trip by name" do
    get '/api/v1/trips/berlin-wall'
    last_response.should be_ok
    attr = JSON.parse(last_response.body)
    attr['title'].should eq 'Berlin Wall'
  end

  it "should return a trip rating" do
    get '/api/v1/trips/berlin-wall'
    last_response.should be_ok
    attr = JSON.parse(last_response.last_response.body)
    attr['rating'].should be_a(Integer)
  end

  it "should return 404 for a trip that does not exist" do
    get '/api/v1/trips/berlin-not'
    last_response.should == 404
  end
end