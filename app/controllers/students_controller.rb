class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        highest = Student.maximum(:grade)
        student = Student.where(grade: highest).take
        render json: student
    end

end
