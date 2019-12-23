class SurveyController < ApplicationController
  def index

  end

  def new

  end

  def create
    render js: "alert:('wtf');"
  end

end
