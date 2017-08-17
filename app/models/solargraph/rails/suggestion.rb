module Solargraph
  module Rails
    class Suggestion < Solargraph::Suggestion
      include ActiveModel::Model

      attr_accessor :label, :kind, :insert, :detail, :path, :location, :arguments, :params, :return_type, :documentation

      def initialize source
        @label = source.label
        @kind = source.kind
        @insert = source.insert
        @detail = source.detail
        @path = source.path
        @location = source.location
        @arguments = source.arguments
        @params = source.params
        @return_type = source.return_type
        @documentation = source.documentation.to_s
      end

      def persisted?
        false
      end

      def self.collect sources
        sources.map{ |s| Solargraph::Rails::Suggestion.new(s) }
      end
    end
  end
end
