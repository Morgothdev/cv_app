class Portfolio < ActiveRecord::Base

	validates :project_name, presence: true, length: { maximum: 50 }
	validates :whens, presence: true, length: { maximum: 40 }
	validates :description, presence: true, length: { maximum: 2000 }
	
	has_many :functions, dependent: :destroy
	
end
	