class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user

    if user.admin?
      can :manage, :all
    else
      can [:index, :learn], Course
      can :update, Word
    end
  end
end
