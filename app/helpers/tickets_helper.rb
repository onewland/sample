module TicketsHelper
  def assignee_link(ticket)
    ticket.user ? link_to(ticket.user.name, ticket.user) : 'Nobody'
  end

  def users_plus_nobody(users)
    users + [User.new(name: 'Nobody', id: nil)]
  end
end
