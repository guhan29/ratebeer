class Beer < ApplicationRecord
  include RatingAverage

  validates :name, presence: true

  belongs_to :brewery
  has_many :ratings, dependent: :destroy

  def average
    return 0 if rating.empty?

    ratings.map { |_r| s.score }.sum / ratings.count.to_f
  end

  def to_s
    "#{name} #{brewery.name}"
  end
end
