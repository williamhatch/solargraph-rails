require 'solargraph'

module Solargraph
  module Rails
    class ApiController < ApplicationController
      def suggest
        code_map = Solargraph::CodeMap.new(code: params['text'])
        offset = code_map.get_offset(params['line'].to_i, params['column'].to_i)
        sugg = code_map.suggest_at(offset)
        respond_to do |format|
          format.json { render json: { status: 'ok', suggestions: sugg } }
        end
      end
    end
  end
end
