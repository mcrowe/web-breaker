require_dependency "web_breaker/application_controller"

module WebBreaker
  class ExternalServicesController < ApplicationController

    before_filter :find_service, only: [:edit, :update, :destroy, :toggle]

    def index
      @services = ExternalService.all
    end

    def new
      @service = ExternalService.new
    end

    def edit
    end

    def create
      @service = ExternalService.new(params[:external_service])

      if @service.save
        redirect_to external_services_path, notice: 'External Service was successfully created.'
      else
        render action: 'new'
      end
    end

    def update
      if @service.update_attributes(params[:external_service])
        redirect_to external_services_path, notice: 'External Service was successfully updated.'
      else
        render action: 'edit'
      end
    end

    def toggle
      @service.toggle_enabled
      head :ok
    end

    def destroy
      @service.destroy

      redirect_to external_services_path, notice: 'External Service was successfully deleted.'
    end

    private

      def find_service
        @service = ExternalService.find(params[:id])
      end

  end
end
