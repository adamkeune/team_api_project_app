class Student < ApplicationRecord
  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :capstones

  def full_name
    "#{first_name} #{last_name}"
  end
end
