class Api::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render "index.json.jb"
  end

  def create
    @experience = Experience.new(
      start_date: params[:startDate],
      end_date: params[:endDate],
      job_title: params[:jobTitle],
      company_name: params[:companyName],
      details: params[:details],
      student_id: params[:studentId],
    )
    if @experience.save
      render "show.json.jb"
    else
      render json: { errors: @experience.errors.full_messages }, status: 422
    end
  end

  def show
    @experience = Experience.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @experience = Experience.find_by(id: params["id"])
    @experience.start_date = params["startDate"] || @experience.start_date
    @experience.end_date = params["endDate"] || @experience.end_date
    @experience.job_title = params["jobTitle"] || @experience.job_title
    @experience.company_name = params["companyName"] || @experience.company_name
    @experience.details = params["details"] || @experience.details
    @experience.student_id = params["studentId"] || @experience.student_id
    @experience.save
    render "show.json.jb"
  end

  def destroy
    @experience = Experience.find_by(id: params["id"])
    @experience.destroy
    render json: { message: "Experience successfully destroyed!" }
  end
end
