# typed: strict
# frozen_string_literal: true

module MCP
  class Prompt
    Message = Data.define(:role, :content) do
      def initialize(role:, content:)
        super(role:, content:)
      end

      def to_h
        { role:, content: content.to_h }.compact.freeze
      end
    end
  end
end
