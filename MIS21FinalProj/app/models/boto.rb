class Boto < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :user
end
