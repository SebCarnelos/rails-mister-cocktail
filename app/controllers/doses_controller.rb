class DosesController < ApplicationController
  def new
    @doses = Doses.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy
    Doses.delete
  end
end
