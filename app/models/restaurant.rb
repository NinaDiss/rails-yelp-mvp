class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  # class Pet < ApplicationRecord
  #   validates :name, presence: true
  #   validates :species, inclusion: { in: %w(dog cat rabbit turtle snake) }
  #  end
end
