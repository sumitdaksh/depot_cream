class Product < ActiveRecord::Base

  validates :title, :description, :image_url, :presence => true
  validates :price, numericality: {greater_than_or_equal_to: 0.1}

  validates :title, :uniqueness => true

  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|jpeg|png)\Z}i,
      message: 'must be url gif png jpg or jpeg'  }


end
