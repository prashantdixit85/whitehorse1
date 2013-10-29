class User < ActiveRecord::Base
  attr_accessible :email, :name, :ph_no, :context
  validates :name, :email, :ph_no, :context, :presence => true

  after_create :send_mail

	def set_user(params)
		self.name = params[:name]
		self.email = params[:email]
		self.ph_no = params[:phone_number]
		self.context = params[:context]
		save
	end

	def send_mail
	   Notifier.send_query(self).deliver
       Notifier.recrive_query(self).deliver
	end	
end
