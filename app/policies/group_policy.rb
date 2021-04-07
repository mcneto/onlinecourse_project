class GroupPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    user.present?
  end

  def create?
    user.instructor? && user.present?
  end

  def update?
    user.instructor? && user.present?
  end

  def destroy?
    user.instructor? && user.present?
  end
end
