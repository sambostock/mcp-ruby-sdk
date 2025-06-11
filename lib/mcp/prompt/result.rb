# typed: strict
# frozen_string_literal: true

module MCP
  class Prompt
    Result = Data.define(:description, :messages) do
      def initialize(description: nil, messages: [])
        super(description:, messages:)
      end

      def to_h
        { description:, messages: messages.map(&:to_h) }.compact.freeze
      end
    end
  end
end
