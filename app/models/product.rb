class Product < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true
	validates :price, numericality: {
		greter_than_or_equal_to: 0.0
	} 

	validates :quantity, numericality: {
		only_integer: true,
		greter_than_or_equal_to: 0
	}

	belongs_to :user
end
