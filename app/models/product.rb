require 'elasticsearch/model'

class Product < ApplicationRecord
  belongs_to :users

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true

    # include Searchable

    # Product.__elasticsearch__.create_index!
    # Product.import
end
