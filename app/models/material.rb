class Material < ApplicationRecord
  has_many :bales
  has_many :mixtures
  has_many :references, through: :mixtures
end
