class ListSerializer < ActiveModel::Serializer
  attributes :task, :user_id, :created_at, :updated_at

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

  def updated_at
    object.updated_at.strftime('%B %d, %Y')
  end
end
