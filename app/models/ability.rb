class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      p "%%%%%%%%%%%%%%%%%%%%%%%%%%%%" 
      p "%%%%%%%%%%%%%%%%%%%%%%%%%%%%" 
      p "%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
      p user.roles_id
      if user.roles_id==0
        can :manage, :all
      elsif user.roles_id==1
        can :read, :all
      else
        can :read, :player
      end
      # user = Role.find(current_user.roles_id) # guest user (not logged in)
      # if user.role_type='admin'
      #   can :manage, :all
      # elsif user.role_type='user'
      #   can :read, :all
      # else
      #   can :read, :all
      # end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
