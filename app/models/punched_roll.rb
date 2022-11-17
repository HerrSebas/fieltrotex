class PunchedRoll < ApplicationRecord
  belongs_to :line
  belongs_to :turn
  belongs_to :employee
  belongs_to :reference
end
