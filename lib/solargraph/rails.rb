require "solargraph/rails/engine"

module Solargraph
  # HACK: Monkeypatch Solargraph::Suggestion to fix as_json errors
  class Suggestion
    def as_json args = {}
      {
        label: @label,
        kind: @kind,
        insert: @insert,
        return_type: return_type
      }
    end
    def to_json args = {}
      as_json.to_json(args)
    end
  end
  module Rails
    # Your code goes here...
  end
end
