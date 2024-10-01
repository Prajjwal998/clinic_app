class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :role, presence: true
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  enum role: { receptionist: 'receptionist', doctor: 'doctor' }

  # Associations
  has_many :patients, foreign_key: :doctor_id, class_name: 'Patient'
  def receptionist?
    role == 'receptionist'
  end

  def doctor?
    role == 'doctor'
  end
end

