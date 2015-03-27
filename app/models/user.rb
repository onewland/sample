class User < ActiveRecord::Base
  has_many :tickets, foreign_key: :assignee_id
end
