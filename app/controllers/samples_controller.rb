class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :update, :destroy]
  require 'csv'
  require 'json'

  # GET /samples
  def index
    @samples = Sample.all
    respond_to do |format|
      format.html
      format.csv { send_data @samples.to_csv }
      format.json { send_data @samples.to_json }
    end
  end

  # POST /samples
  def import
    Sample.import(params[:file])
    redirect_to root_url, notice: 'Samples imported.'
  end

  # GET /samples/1
  def show
    render json: @sample
  end

  private

  def set_sample
    @sample = Sample.find(params[:id])
  end

  def sample_params
    params[:sample]
  end
end
