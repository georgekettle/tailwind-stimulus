class Todo < ApplicationRecord
  belongs_to :goal

  after_create_commit -> { broadcast_append_to "todos", partial: "todos/todo", locals: { todo: self }, target: "task_list_goal_#{goal.id}" }
end
