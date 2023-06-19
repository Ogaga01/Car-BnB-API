require 'rails_helper'

RSpec.describe Car, type: :model do
  before :each do
    @user = User.create(name: 'Hammad', username: 'hammad')
    @car = Car.create(name: 'car', model: 'BMW', description: 'A BMW car', image: 'picture link', price: 2500,
                      user_id: @user.id)
  end

  context 'model validations' do
    it 'should be valid' do
      expect(@car).to be_valid
    end

    it 'should be invalid without no model name' do
      @car.model = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid without no picture given' do
      @car.image = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid without no price mentioned' do
      @car.price = nil
      expect(@car).to_not be_valid
    end

    it 'should be invalid with a negative price' do
      @car.price = -10
      expect(@car).to_not be_valid
    end

    it 'should be valid with a positive price' do
      @car.price = 1000
      expect(@car).to be_valid
    end
  end
end
