class TimesheetsController < ApplicationController

  #before_filter :login_required
  
  def new
    @timesheet = Timesheet.new(params[:timesheet])
    if @timesheet.valid?
      days = (@timesheet.end_date - @timesheet.start_date).numerator + 1
      days.times {@timesheet.entries.build}
    else
      flash[:error] = "Invalid dates"
      redirect_to('/')
    end
  end
  
  def index
    @timesheets = Timesheet.recent(params[:user_id])
  end
  
  def show
    @timesheet = Timesheet.find(params[:id])
  end
  
  def create
    @timesheet = Timesheet.new(params[:timesheet])
    if @timesheet.save
      flash[:notice] = 'Timesheet was successfully created.'
    else
      flash[:error] = 'Unable to create timesheet'
      render :action => "new"
    end
  end

  def destroy
  end

end
