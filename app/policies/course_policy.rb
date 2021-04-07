class CoursePolicy < ApplicationPolicy
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
    user.instructor? && record.user == user
  end

  def destroy?
    user.instructor? && record.user == user
  end

  # def permitted_attributes
  #     if user.instructor?
  #       [:user_id, :course_name]
  #     else
  #       [:course_name]
  #     end
  # end
end
