# frozen_string_literal: true

module MCP
  class Tool
    Response = Data.define(:content, :is_error) do
      def initialize(content, is_error: false)
        super(content:, is_error:)
      end

      def to_h
        { content:, isError: is_error }.compact.freeze
      end
    end
  end
end
