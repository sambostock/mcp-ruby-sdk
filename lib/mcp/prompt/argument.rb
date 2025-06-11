# typed: strict
# frozen_string_literal: true

module MCP
  class Prompt
    Argument = Data.define(:name, :description, :required) do
      attr_reader :to_h

      def initialize(name:, description: nil, required: false)
        @to_h = {
          name:,
          description:,
          required:,
        }.compact.freeze

        super(name:, description:, required:)
      end
    end
  end
end
