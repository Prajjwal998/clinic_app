require 'rails_helper'

RSpec.describe Patient, type: :model do
  it 'has a valid factory' do
    expect(build(:patient)).to be_valid
  end

  it 'is invalid without a name' do
    patient = build(:patient, name: nil)
    expect(patient).not_to be_valid
  end

  it 'is invalid without an age' do
    patient = build(:patient, age: nil)
    expect(patient).not_to be_valid
  end

  it 'is invalid without a contact number' do
    patient = build(:patient, contact_number: nil)
    expect(patient).not_to be_valid
  end

  it 'belongs to a doctor' do
    patient = create(:patient)
    expect(patient.doctor).to be_a(User)
    expect(patient.doctor.role).to eq('doctor')
  end
end
