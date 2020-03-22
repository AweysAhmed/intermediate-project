# frozen_string_literal: true

class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
  end
end
