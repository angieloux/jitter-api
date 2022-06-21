class Message < ApplicationRecord
  validates_presence_of :text
  belongs_to :user

  def transform_message
    return {
      id: self.id,
      text: self.text,
      posted: self.updated_at,
      username: self.user.username
    }  
  end
end
