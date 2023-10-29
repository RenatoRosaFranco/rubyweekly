# frozen_string_literal: true

class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def show
    @lessons = Lesson.all.only(:thumbnail, :name, :description, :video_url)  
  end

  private

  def set_lesson
    @lesson = Lesson.friendly.find(params[:id])
  end
end
