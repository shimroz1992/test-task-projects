class Api::V1::ProjectSerializer < BaseSerializer
  param :project

  def serialize
    {
      id: project.id,
      title: project.title,
      description: project.description,
      status: project.status,
      start_date: project.start_date,
      end_date: project.end_date,
      created_at: project.created_at,
      updated_at: project.updated_at
    }
  end
end
