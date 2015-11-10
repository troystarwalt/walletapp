require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # describe "POST #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "PUT #udpate" do
  #   it "returns http success" do
  #     get :udpate
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  let(:valid_attributes){
    @valid_attributes = {
      email: "test@testing.com",
      fname: "Michael",
      lname: "Roberts",
      phone: "2199391092",
      balance: 450,
      password: "aintnothang"
    }
  }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it " should return all users" do
      user = User.create! valid_attributes
      get :index, {}
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "GET #show" do
    # before { get :show, id: 1}
    it "returns http success" do
      get :show, id: 1
      expect(response).to have_http_status(:success)
    end
    after { puts "Completed"}
  end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
