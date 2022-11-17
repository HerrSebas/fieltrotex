class Mixture < ApplicationRecord
  belongs_to :material
  belongs_to :turn
  belongs_to :line
  belongs_to :employee
end
