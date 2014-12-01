module ApplicationHelper

	def flass_class(msg)
		case msg
		when :success then "success"
		when :error   then "error"
		when :alert then "warning"
		when :notice then " "
		else "info"
		end
	end



end
