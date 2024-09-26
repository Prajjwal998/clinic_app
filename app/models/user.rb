class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  enum role: { receptionist: 'receptionist', doctor: 'doctor' }

  # Associations
  has_many :patients, foreign_key: :doctor_id, class_name: 'Patient'
end