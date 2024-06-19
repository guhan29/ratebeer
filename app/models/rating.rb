class Rating < ApplicationRecord
  belongs_to :beer

  def to_s
    "Rating: #{score}"
  end
end
