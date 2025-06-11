# frozen_string_literal: true

module MCP
  Annotations = Data.define(:audience, :priority) do
    def initialize(audience: nil, priority: nil)
      super(audience:, priority:)
    end

    def to_h
      super.compact.freeze
    end
  end
end
