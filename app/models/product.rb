class Product < ApplicationRecord
  belongs_to :tiend, class_name: "Tiend"
  has_many :sale_items
end
