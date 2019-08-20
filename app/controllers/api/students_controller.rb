class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render "index.json.jb"
  end

  def show
    @student = Student.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @student = Student.new({
      first_name: params["firstName"],
      last_name: params["lastName"],
      email: params["email"],
      phone_number: params["phoneNumber"],
      short_bio: params["bio"],
      linkedin_url: params["linkedinURL"],
      twitter_handle: params["twitterHandle"],
      personal_url: params["blog"],
      resume_url: params["resumeURL"],
      github_url: params["gitHub"],
      photo_url: params["photo"],
    })

    if @student.save
      render "show.json.jb"
    else
      render json: { errors: @student.errors.full_messages }, status: 422
    end
  end

  def update
    @student = Student.find_by(id: params["id"])
    @student.first_name = params["firstName"] || @student.first_name
    @student.last_name = params["lastName"] || @student.last_name
    @student.email = params["email"] || @student.email
    @student.phone_number = params["phoneNumber"] || @student.phone_number
    @student.short_bio = params["bio"] || @student.short_bio
    @student.linkedin_url = params["linkedinURL"] || @student.linkedin_url
    @student.twitter_handle = params["twitterHandle"] || @student.twitter_handle
    @student.personal_url = params["blog"] || @student.personal_url
    @student.resume_url = params["resumeURL"] || @student.resume_url
    @student.github_url = params["gitHub"] || @student.github_url
    @student.photo_url = params["photo"] || @student.photo_url

    if @student.save
      render "show.json.jb"
    else
      render json: { errors: @student.errors.full_messages }, status: 422
    end
  end

  def destroy
    @student = Student.find_by(id: params["id"])
    @student.destroy
    render json: { message: "Student removed from database" }
  end

  def update
    @student = Student.find_by(id: params["id"])
    @student.first_name = params["firstName"] || @student.first_name
    @student.last_name = params["lastName"] || @student.last_name
    @student.email = params["email"] || @student.email
    @student.phone_number = params["phoneNumber"] || @student.phone_number
    @student.short_bio = params["bio"] || @student.short_bio
    @student.linkedin_url = params["linkedinURL"] || @student.linkedin_url
    @student.twitter_handle = params["twitterHandle"] || @student.twitter_handle
    @student.personal_url = params["blog"] || @student.personal_url
    @student.resume_url = params["resumeURL"] || @student.resume_url
    @student.github_url = params["gitHub"] || @student.github_url
    @student.photo_url = params["photo"] || @student.photo_url

    @student.save

    render "show.json.jb"
  end

  def destroy
    @student = Student.find_by(id: params["id"])
    @student.destroy
    render json: { message: "Student removed from database" }
  end
end
