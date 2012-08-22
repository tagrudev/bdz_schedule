class SearchController < ApplicationController
  def index
    m = Bdz::Client.new
    @search = m.search({:from_station => "#{params[:from_station]}", :to_station => "#{params[:to_station]}", :date => "#{params[:date]}"})
    respond_to do |format|
      format.json { render :json => @search }
    end
  end
end
