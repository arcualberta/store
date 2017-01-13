class Field < ApplicationRecord
	belongs_to :form
	
	enum type: [:text_field, :text_area, :file, :image, :email, :url] unless instance_methods.include? :type
end
