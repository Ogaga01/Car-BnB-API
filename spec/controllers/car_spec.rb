require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  before :all do
    @user = User.create(name: 'Chi', username: 'chi')
    @car = Car.create(name: 'car', model: 'BMW', description: 'A BMW car', image: 'picture link', price: 250,
                      user_id: @user.id)
  end

  describe 'POST create' do
    it 'returns status 201 (created)' do
      post :create,
           params: { name: 'car', model: 'BMW', description: 'A BMW car', image: 'picture link', price: 250,
                     user_id: @user.id }
      expect(response.status).to eq(201)
    end

    it 'returns status 500 (internal_server_error) ' do
      post :create,
           params: { name: 'car', model: 'BMW', description: 'A BMW car', image: 'picture link', price: -250,
                     user_id: @user.id }
      expect(response.status).to eq(500)
    end
  end

  describe 'GET index' do
    it 'returns cars array' do
      get :index
      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body)
      expect(parsed_response).not_to be_empty
    end
  end
end
