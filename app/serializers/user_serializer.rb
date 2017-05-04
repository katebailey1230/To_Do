class UserSerializer < ActiveModel::Serializer
  attributes :user_id, :created_at, :username, :email, :password

  def username
    object.username
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
