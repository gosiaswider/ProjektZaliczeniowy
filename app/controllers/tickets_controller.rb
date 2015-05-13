class TicketsController < ApplicationController
  
  def index
     @project = Project.find(params[:project_id])
     @tickets = Project.find(params[:project_id]).tickets
  end
  
  def show
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id])
  end
  
  def new
     @project = Project.find(params[:project_id])
  end
  
  def edit
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id])
  end
  
  def create
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.create(ticket_params)
    redirect_to project_tickets_path(@project, @ticket)
  end
  
  def destroy
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.find(params[:id])
    @ticket.destroy
    redirect_to project_tickets_path(@project, @ticket)
  end
  
  private
  def ticket_params
     params.require(:ticket).permit(:name, :description, :priority, :difficulty, :status)
    end
end
