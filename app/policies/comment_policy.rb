class CommentPolicy < ApplicationPolicy
  
  def show?
    true
  end

  def index?
    user.is_admin? || user.is_poster?
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    false
  end

  
  def edit?
    false
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
