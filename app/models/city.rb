class City < ActiveRecord::Base
	has_many :residences, dependent: :destroy
	

end