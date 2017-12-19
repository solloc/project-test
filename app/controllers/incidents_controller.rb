class IncidentsController < ApplicationController

  before_action :require_user, only: [:new, :edit, :destroy]

  def index
    @incidents = Incident.all.reverse_order!
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      redirect_to(incidents_path)
    else
      redirect_to(incidents/new_path)
    end
  end

  def show
    @incident = Incident.find(params[:id])
  end

  def edit
    @incident = Incident.find(params[:id])
  end

  def update
    @incident = Incident.find(params[:id])
    @incident.update(incident_params)
    redirect_to(incident_path(@incident))
  end

  def destroy
    @incident = Incident.find(params[:id])
    @incident.destroy
    redirect_to(incidents_path)
  end


  private
  def incident_params
    params.require(:incident).permit(:priority, :title, :source)
  end


end
