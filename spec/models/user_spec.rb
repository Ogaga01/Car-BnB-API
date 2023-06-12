require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'toussaint', username: 'toussaint')
  end

  before { subject.save }

  it 'should not be valid with nil name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid name' do
    subject.name = 'toussaint'
    expect(subject).to be_valid
  end

  it 'should not be valid with nil username' do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid username' do
    subject.name = 'toussaint'
    expect(subject).to be_valid
  end
end