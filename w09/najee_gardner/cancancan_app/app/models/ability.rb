class Ability
  include CanCan::Ability

  def initialize(user)
    # Defining abilities
    can :read, Article
    can :create, Article
    can :update, Article do |article|
      article.user == user
    end
    can :destroy, Article do |article|
      article.user == user
    end

    if user.admin
      can :manage, Article
    end
  end
end
