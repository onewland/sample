class Ticket < ActiveRecord::Base
  belongs_to :user, foreign_key: :assignee_id
end
