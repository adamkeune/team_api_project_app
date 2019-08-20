class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render "index.json.jb"
  end

  def show
    @student = Student.find_by(id: params["id"])
    render "show.json.jb"
  end
end
