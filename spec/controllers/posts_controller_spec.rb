require "rails_helper"

# i removed type: :controller since this spec is already inside the spec/controllers folder
RSpec.describe PostsController do
  describe "GET index" do
    let(:post) {create :post}
    it "assigns @posts" do
      get :index
      expect(assigns(:posts)).to eq([post])
    end
  end
end
