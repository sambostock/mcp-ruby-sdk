# typed: strict
# frozen_string_literal: true

module MCP
  class Resource
    Embedded = Data.define(:resource, :annotations) do
      def initialize(resource:, annotations: nil)
        super(resource:, annotations:)
      end

      def to_h
        { resource: resource.to_h, annotations: }.compact.freeze
      end
    end
  end
end
