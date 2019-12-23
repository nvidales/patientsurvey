class FileController < ApplicationController
  def index
    @patients = Question.all
    respond_to do |format|
      format.html
      format.csv {send_data @patients.to_csv}
      format.xls
    end
  end

  def show

  end
end
