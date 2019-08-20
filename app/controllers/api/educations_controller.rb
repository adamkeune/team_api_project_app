class Api::EducationsController < ApplicationController
  def index
    @educations = Education.all
    render "index.json.jb"
  end

  def create
    @education = Education.new(
      start_date: params[:startDate],
      end_date: params[:endDate],
      degree: params[:degree],
      university_name: params[:universityName],
      details: params[:details],
      student_id: params[:studentId],
    )
    if @education.save
      render "show.json.jb"
    else
      render json: { errors: @education.errors.full_messages }, status: 422
    end
  end

  def show
    @education = Education.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @education = Education.find_by(id: params["id"])
    @education.start_date = params["startDate"] || @education.start_date
    @education.end_date = params["endDate"] || @education.end_date
    @education.degree = params["degree"] || @education.degree
    @education.university_name = params["universityName"] || @education.university_name
    @education.details = params["details"] || @education.details
    @education.student_id = params["studentId"] || @education.student_id
    @education.save
    render "show.json.jb"
  end

  def destroy
    @education = Education.find_by(id: params["id"])
    @education.destroy
    render json: { message: "Education successfully destroyed!" }
  end
end
