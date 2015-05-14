class TicketsController < ApplicationController
  
  def index
     @project = Project.find(params[:project_id])
     @tickets = Project.find(params[:project_id]).tickets
  end
  
  def edit
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id])
  end
  
  def show
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id])
  end
  
  def new
     @project = Project.find(params[:project_id])
  end
  
  def update
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id])
    
    if @ticket.update(ticket_params)
      redirect_to @ticket
    else
      render 'edit'
    end
   end
  
  def create
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.create(ticket_params)
    
    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
    
  end
  
  def destroy
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id])
    @ticket.destroy
    redirect_to project_tickets_path(@project, @ticket)
  end
  
  private
  def ticket_params
    params.require(:ticket).permit(:name, :description, :priority, :difficulty, :status, :picture, :remove_picture)
    end
end
