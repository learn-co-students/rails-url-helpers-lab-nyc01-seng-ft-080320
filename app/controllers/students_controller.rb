class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @status = Student.find(params[:id]).active ? "This student is currently active." : "This student is currently inactive."
  end

  def activate
    current_student = Student.find(params[:id])
    
    current_student.update!(active:!current_student.active)
    redirect_to action: "show", id:params[:id]
  end
  private

    def set_student
      @student = Student.find(params[:id])
    end
end