class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @patients = Question.all
    respond_to do |format|
      format.html
      format.csv {send_data @patients.to_csv}
      format.xls
    end
  end

  def new

  end

  def show

    #@patient = Question.find(params[:id])


  end

  def thankyou

  end


  def create


    @patient = Question.new(questions_params)
    @patient.dateSubmitted = DateTime.parse(Time.now.to_s).strftime("%m/%d/%Y %R")
    @answers = @patient.answers
    @patient.save

    puts("BELOW ERRORS........")
    @patient.errors.full_messages.each do |msg|
      puts(msg)
    end

    render 'questions/thankyou'

  end

  private def questions_params
    params.require(:questions).permit(:id, :firstName, :lastName, :phoneNumber, :answers);
  end
end
