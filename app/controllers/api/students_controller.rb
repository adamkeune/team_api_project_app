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
    @student = Student.create({
      first_name: params["firstName"],
      last_name: params["lastName"],
    })
  end
end
