class CategoryPolicy < ApplicationPolicy


  def show?
    true
  end

  def index?
    user.is_admin? || user.is_poster?
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
    user.is_admin?
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
