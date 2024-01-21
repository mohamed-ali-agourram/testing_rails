require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:valid_attributes) do
    {
      title: 'New Title',
      body: 'published'
    }
  end

  describe "GET /index" do
    it "renders index page" do
      get posts_url
      expect(response).to be_successful
    end
  end

  describe "POST /index" do
    it "post a new post" do
      post posts_url, params: {post: valid_attributes}
      debugger
      expect(response.body).to include("Title")
      # expect(response).to have_http_status 302
    end
  end
end
