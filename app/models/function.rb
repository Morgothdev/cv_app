class Function < ActiveRecord::Base

	validates :description, presence: true
	validates :portfolio_id, presence: true

	belongs_to :portfolio

end
