class Up < ActiveRecord::Base

	has_many :downs

	accepts_nested_attributes_for :downs

end
