# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @lessons = Lesson.all.only(:thumbnail, :name, :description, :video_url)
    @main_lesson = @lessons.first
  end
end