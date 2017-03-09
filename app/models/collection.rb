 class Collection < ApplicationRecord
	belongs_to :owner, class_name: "User"
	has_many :metadata_values, as: :valuable, dependent: :destroy
	belongs_to :item_type
	has_many :collections
	has_and_belongs_to_many :items
	accepts_nested_attributes_for :metadata_values, allow_destroy: true
end
