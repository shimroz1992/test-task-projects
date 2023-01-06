class Api::V1::TaskSerializer < BaseSerializer
  param :task

  def serialize
    {
      id: task.id,
      title: task.title,
      description: task.description,
      status: task.status,
      start_date: task.start_date,
      end_date: task.end_date,
      created_at: task.created_at,
      updated_at: task.updated_at 
    }
  end
end
