class Bale < ApplicationRecord
  belongs_to :material
  belongs_to :turn
  belongs_to :line
  belongs_to :user
end
