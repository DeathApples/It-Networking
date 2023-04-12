class CoursesController < ApplicationController
  def show
    @course = Course.find_by id: params[:id]
    @chapters = Chapter.where course_id: @course.id
  end
end
