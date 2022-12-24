class SportsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @sports = policy_scope(Sport)
  end
end
