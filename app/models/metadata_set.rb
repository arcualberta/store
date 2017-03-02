class MetadataSet < ApplicationRecord
	has_and_belongs_to_many :item_types
	has_many :metadata_fields, dependent: :destroy

	accepts_nested_attributes_for :metadata_fields, allow_destroy: true
	# has_many :metadata_fields, through: :items_fields_values

	# def as_json(options={})		
	# 	options[:include] ||= :metadata_fields
	# 	super(options)
	# end
end
