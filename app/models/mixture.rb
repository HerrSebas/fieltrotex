class Mixture < ApplicationRecord
  belongs_to :material
  belongs_to :reference
  belongs_to :turn
  belongs_to :line
  belongs_to :user
end
