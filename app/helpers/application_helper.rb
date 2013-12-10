module ApplicationHelper
	def class_for_active(actual_active, name_for_true)
		if actual_active==name_for_true
			'class=active'
		end
	end

     def full_title_wthout_admin(page_title)
        base_title = "Ruby on Rails Tutorial Sample App"
        if page_title.empty?
            base_title
        else
            "#{base_title} | #{page_title}"
        end
    end

    def full_title(page_title)
        if signed_in?
            full_title_wthout_admin(page_title)+" | Admin Mode"
        else
            full_title_wthout_admin(page_title)
        end
    end
end
