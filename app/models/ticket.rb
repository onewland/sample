class Ticket < ActiveRecord::Base
  belongs_to :user, foreign_key: :assignee_id

  paginates_per 20
end
