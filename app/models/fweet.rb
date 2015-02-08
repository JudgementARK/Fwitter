class Fweet
	attr_accessor :user, :message
	ALL_MESSAGES = []
	def initialize(user, message)
		@user = user
		@message = message
		ALL_MESSAGES.push(self)
	end
	def self.all_messages
		ALL_MESSAGES
	end
end
