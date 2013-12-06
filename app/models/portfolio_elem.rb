class PortfolioElem < ActiveRecord::Base
	attr_accessor :project_name, :whens, :description, :my_functions
	
	validates :project_name, presence: true, length: { maximum: 50 }
	validates :whens, presence: true
	validates :description, presence: true
	validates :my_functions, presence: true
	
end
