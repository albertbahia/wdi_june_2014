class Ability
	include CanCan::Ability

	def initialize(user) #current user object
		can :read, Article
		can :create, Article
		can :update, Article do |article|
			user == article.user
		end
		can :destroy, Article do |article|
			user == article.user
		end

		# Admin authorization
		if user.admin
			can :manage, :all  # means all models in my app
		end

	end
end