class Patient < ApplicationRecord
  belongs_to :doctor, class_name: 'User', foreign_key: 'doctor_id'

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :contact_number, presence: true

  def self.patients_grouped_by_day
    group_by_day(:created_at).count
  end
end
