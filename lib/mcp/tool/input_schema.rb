# frozen_string_literal: true

module MCP
  class Tool
    InputSchema = Data.define(:properties, :required) do
      attr_reader :to_h

      def initialize(properties: {}, required: [])
        properties = properties.transform_keys(&:to_sym)
        required = required.map(&:to_sym)

        @to_h = {
          type: "object",
          properties:,
          required:,
        }.compact.freeze

        super(properties:, required:)
      end
    end
  end
end
