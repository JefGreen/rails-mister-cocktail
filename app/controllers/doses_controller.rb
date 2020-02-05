class DosesController < ApplicationController
  def new
    Dose.new
  end

  def create
  end

  def index
    Dose.all
  end
end
