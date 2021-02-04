class Speciality < ApplicationRecord
  has_many :doctors, through: :jointablespecilitydoctors

end
