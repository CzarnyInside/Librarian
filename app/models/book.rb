class Book < ActiveRecord::Base
  belongs_to :user

  def borrowed?
    user.present?
  end
end
