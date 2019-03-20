class PublicationPolicy < ApplicationPolicy

  def show?
    user.is_admin? || user.is_poster?
  end

  def index?
    user.is_admin? || user.is_poster?
  end

  def create?
    user.is_admin? || user.is_poster?
  end

  def new?
    return true if user.is_admin?
    if user.is_poster?
        return (resource.user_id==user.id)
    end
  end

  def update?
    return true if user.is_admin?
    if user.is_poster?
        return (resource.user_id==user.id)
    end
  end

  
  def edit?
    return true if user.is_admin?
    if user.is_poster?
        return (resource.user_id==user.id)
    end
  end

  def destroy?
    return true if user.is_admin?
    if user.is_poster?
        return (resource.user_id==user.id)
    end
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
