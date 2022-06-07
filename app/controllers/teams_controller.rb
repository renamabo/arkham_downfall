class TeamsController < ApplicationController
  # before_action :set_team, only: %i[ show edit update destroy ]

  # GET /teams or /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1 or /teams/1.json
  def show; end

  # GET /teams/new
  def new; end

  # GET /teams/1/edit
  def edit; end

  # POST /teams or /teams.json
  def create
    @user = current_user
    @team = Team.new(team_params)
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update; end

  # DELETE /teams/1 or /teams/1.json
  def destroy; end

  private

    # Only allow a list of trusted parameters through.
    def team_params
      params.permit(:name, :campaign, :active)
    end
end
