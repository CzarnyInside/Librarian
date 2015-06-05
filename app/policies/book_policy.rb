class BookPolicy < ApplicationPolicy

  def edit?
    user.admin?
  end

  def destroy?
    edit?
  end

  def update?
    edit?
  end

  def new?
    edit?
  end

  def create?
    edit?
  end
end
