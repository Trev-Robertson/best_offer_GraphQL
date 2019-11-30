class Bid < ApplicationRecord
  belongs_to :contractor
  belongs_to :task
end
