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

    @student.save

    render "show.json.jb"
  end
end
