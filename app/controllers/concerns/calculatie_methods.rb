module Concerns
  module CalculatieMethods
      extend ActiveSupport::Concern

      included do

        private
          def calculatie
            @calculatie ||= load_calculatie
          end

          def calculaties
            @calculaties ||= Calculatie.all
          end

          def load_calculatie
            deleted_calculatie || blank_calculatie || found_calculatie || created_calculatie || nil
          end

          def blank_calculatie
            %w(new).include?(params[:action]) && Calculatie.new
          end

          def found_calculatie
            %w(show edit update).include?(params[:action]) && Calculatie.find(params[:id])
          end

          def created_calculatie
            %w(create).include?(params[:action]) && Calculatie.new(calculatie_params)
          end

          def deleted_calculatie
            %w(destroy).include?(params[:action]) && Calculatie.find(params[:id])
          end

          def fabrikaat
            @fabrikaat ||= Fabrikaat.find(params[:calculatie][:fabrikaat]) if params[:calculatie][:fabrikaat].present?
          end

          def systeem
            @systeem ||= Systeem.find(params[:calculatie][:systeem]) if params[:calculatie][:systeem].present?
          end

          def calculatie_params
            params.require(:calculatie).permit(:name, :number)
          end
      end
  end
end
