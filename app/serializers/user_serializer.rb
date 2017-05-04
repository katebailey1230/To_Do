class UserSerializer < ActiveModel::Serializer
  attributes :user_id, :created_at, :name, :email, :password

  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
