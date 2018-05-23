class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  def user_attributes=(all_attributes)
    if all_attributes[:username] != nil && all_attributes[:username] != ""
      all_attributes.values.each do |att|
        user = User.find_or_create_by(username: att)
        self.user = user
      end
    end
  end
end
