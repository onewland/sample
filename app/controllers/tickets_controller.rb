class TicketsController < ApplicationController
  expose(:ticket) { Ticket.find(params[:id]) }
  expose(:tickets) { Ticket.all }
  expose(:form_action)

  def new
    self.ticket = Ticket.new
    self.form_action = 'Create'
  end

  def create
    ticket = Ticket.create!(ticket_params)
    redirect_to(ticket)
  end

  def show; end

  def edit
    self.form_action = 'Update'
    render :new
  end

  def update
    ticket.update(ticket_params)
    redirect_to(ticket)
  end

  def index; end

private
  def ticket_params
    params.require(:ticket).permit(:title, :description, :assignee_id)
  end
end
