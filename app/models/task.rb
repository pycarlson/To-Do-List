class Task < ActiveRecord::Base

  validates :to_do, :status, presence: true

end