class TaskPolicy < ApplicationPolicy
  def assign_task?
    user.role == "manager"
  end
end