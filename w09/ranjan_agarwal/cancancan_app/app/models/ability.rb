class Ability
  include CanCan::Ability

  def initialize(user)
    # Defining abilities

     can :read, Article
     can :create, Article
     can :update, Article do |article|
       user == article.user
     end
     can :destroy, Article do |article|
       user == article.user
     end

     if user.admin
       can :manage, Article #:all
     end

  end

end
