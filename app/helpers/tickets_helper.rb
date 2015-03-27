module TicketsHelper
  def assignee_link(ticket)
    ticket.user ? link_to(ticket.user.name, ticket.user) : 'Nobody'
  end
end
