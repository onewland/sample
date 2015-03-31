class User < ActiveRecord::Base
  has_many :tickets, foreign_key: :assignee_id

  paginates_per 10
end
