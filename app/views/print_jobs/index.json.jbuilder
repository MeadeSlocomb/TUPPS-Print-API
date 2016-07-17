json.print_jobs @print_jobs.each do |print_job|
  json.extract! print_job, :job_status, :quote_price, :quote_date, :page_amount
end
