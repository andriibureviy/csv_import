class InsurancesController < ApplicationController
  def import
    file = params[:file]
    return redirect_to insurances_path, notice: 'Only CSV please' unless file.content_type == 'text/csv'

    CsvImportInsurancesService.new.call(file)

    redirect_to insurances_path, notice: 'Insurances imported!'
  end

  def index
    @insurances = Insurance.all
  end
end
