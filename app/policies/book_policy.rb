class BookPolicy < ApplicationPolicy

  def borrow?
    !record.borrowed?
  end

  def return_book?
    !borrow?
  end

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
