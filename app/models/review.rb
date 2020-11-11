class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  # rating compris entre 0 et 5
  validates :rating, inclusion: { in: (0..5).to_a }, numericality: { only_integer: true }
end
