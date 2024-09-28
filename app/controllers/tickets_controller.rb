class TicketsController < ApplicationController
    # Ensure user is logged in before allowing access to these actions
    before_action :authenticate_user!
  
    # Action to show the form for creating a new ticket
    def new
      @ticket = Ticket.new
    end
  
    # Action to handle the form submission for creating a ticket
    def create
      @ticket = current_user.tickets.build(ticket_params)
      if @ticket.save
        redirect_to tickets_path, notice: 'Ticket was successfully created.'
      else
        render :new, alert: 'There was an error creating the ticket.'
      end
    end
  
    # Action to display all tickets for the current user
    def index
      @tickets = current_user.tickets
    end
  
    # Private method to define the allowed parameters for a ticket
    private
  
    def ticket_params
      params.require(:ticket).permit(:title, :description, :category)
    end
  end
  