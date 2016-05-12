class TodoList < ActiveRecord::Base
	has_many :todo_items, dependent: :destroy
	validates :title, presence: true, uniqueness: true
	belongs_to :user
end
