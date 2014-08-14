class Ability 
	include CanCan::Ability 

	def initialize(user)

		can :read, Article 

		can :create, @article

		can :update, Article do |article|
			user == article.user
		end 
		can :destroy, Article do |article|
			user == article.user
		end 

		if user.admin 
			can :manage, Article 
		end 
		
	end 
end 