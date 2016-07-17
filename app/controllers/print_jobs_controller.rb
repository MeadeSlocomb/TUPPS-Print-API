class PrintJobsController < ApplicationController

  def index
    @print_jobs = PrintJob.all
  end

  def create
    @print_job = PrintJob.new print_job_params
    @print_job.job_status = 0
    @print_job.save
  end

  def print_job_params
    params.require(:print_job).permit(:quote_date, :quote_price, :page_amount)
  end
end
