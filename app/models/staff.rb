class Staff < ActiveRecord::Base
  belongs_to :user
  has_many :skills, dependent: :delete_all
  has_many :trainings, dependent: :delete_all
  has_many :academics, dependent: :delete_all
  has_many :proffessionals, dependent: :delete_all
  has_many :specializations, dependent: :delete_all

  def self.search(search)
    where("file_no = ?", "%#{search}%")
    #where("content LIKE ?", "%#{search}%")
  end
end
