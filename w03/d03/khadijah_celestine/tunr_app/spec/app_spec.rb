require 'spec_helper'

describe 'Root Path' do
  describe 'GET /' do
    before { get '/' }
 
    it 'is successful' do
      expect(last_response.status).to eq 200
    end
  end
end

describe "Sinatra App" do

  it "should respond to GET" do
    get '/'
    last_response.should be_ok
    last_response.body.should match(/It works!/)
  end

end
