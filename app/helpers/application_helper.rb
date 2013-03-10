module ApplicationHelper
	def sign_status
		unless 	user_signed_in?
			sign_status_html = "#{link_to('Sign in',sign_in_url, :class => 'signin')}"
		else
			sign_status_html = "#{link_to('Sign out',sign_out_url, :class => 'signin')}"
		end
	end
end
