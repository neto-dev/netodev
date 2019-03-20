class UserPolicy < ApplicationPolicy

  def show?
    user.is_admin? || (user.id == resource.id)
  end

  def index?
    user.is_admin?
  end

  def create?
    user.is_admin?
  end

  def new?
    user.is_admin?
  end

  def update?
    user.is_admin?    
  end
  
  def edit?
    return true if user.is_admin?
    if user.is_poster?
        return (resource.user_id==user.id)
    end
  end

  def destroy?
    user.is_admin?
  end
   

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
