require 'spec_helper'

describe 'App' do
  
  describe "GET '/'" do
    before(:each) do
      get '/'
    end
    
    it "returns a 200 status code" do
      get '/'
      expect(last_response.status).to eq(200)
    end


    it "sets session[:name] equal to your name" do
      
      expect(session.has_key?(:name)).to eq(true)
    end


   it "says Hello in the view" do
      expect(last_response.body).to include("Hello, ")
    end

  end

end