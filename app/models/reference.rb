class Reference < ApplicationRecord
  has_many :mixtures
  has_many :materials, through: :mixtures
end
