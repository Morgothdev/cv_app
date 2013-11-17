module ApplicationHelper
	def class_for_active(actual_active, name_for_true)
		if actual_active==name_for_true
			'class=active'
		end
	end
end
