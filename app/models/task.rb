class Task < ActiveRecord::Base

  validates :to_do, presence: true

end