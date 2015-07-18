class Candidate < ActiveRecord::Base
  belongs_to :position
  has_many :botos
  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
end
