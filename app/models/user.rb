class User < ActiveRecord::Base
  attr_accessible :email, :name, :ph_no, :context
  validates :name, :email, :ph_no, :context, :presence => true
	def set_user(params)
		self.name = params[:name]
		self.email = params[:email]
		self.ph_no = params[:phone_number]
		self.context = params[:context]
		save
	end	
end
