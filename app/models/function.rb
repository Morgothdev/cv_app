class Function < ActiveRecord::Base

	validates :description, presence: true
	validates :portfolio_elem_id, presence: true

	belongs_to :portfolio_elem

end
