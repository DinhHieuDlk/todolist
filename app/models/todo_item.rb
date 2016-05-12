class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  belongs_to :user
  validates :content, presence: true
  def complete?
  	!completed_at.blank?
  	
  end

end
