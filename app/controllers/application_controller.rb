class ApplicationController < ActionController::Base

	include Pundit

	layout :layout_by_resource
	protect_from_forgery with: :exception

	protected

	def layout_by_resource
	  if devise_controller?
	    "users"
	  else
	    "application"
	  end
	end
end
