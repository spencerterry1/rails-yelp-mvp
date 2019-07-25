class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates_inclusion_of :category, :in => ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, :dependent => :destroy
end

