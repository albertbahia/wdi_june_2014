class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Article
    can :create, Article
    can :update, Article do |article|
      user == article.user
    end
    can :destroy, Article

    if user.admin
      can :manage, :all
    end
  end

end
