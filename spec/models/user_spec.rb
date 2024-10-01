require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  it 'can be a doctor' do
    doctor = build(:user, :doctor)
    expect(doctor.role).to eq('doctor')
  end

  it 'can be a receptionist' do
    receptionist = build(:user, :receptionist)
    expect(receptionist.role).to eq('receptionist')
  end
end
