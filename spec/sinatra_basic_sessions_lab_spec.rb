require 'spec_helper'

describe 'App' do
  
  describe "GET '/'" do
 
    
    it "returns a 200 status code" do
      get '/'
      expect(last_response.status).to eq(200)
    end


    it "sets session[:name] equal to your name" do
    get '/'
      expect(session.has_key?(:name)).to eq(true)
    end


   it "says Hello in the view" do
      get '/'
      expect(last_response.body).to include("Hello, ")
    end

  end

end