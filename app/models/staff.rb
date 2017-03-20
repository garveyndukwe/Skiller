class Staff < ActiveRecord::Base
  has_many :skills
  has_many :trainings, dependent: :delete_all
end
