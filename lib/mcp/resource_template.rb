# typed: strict
# frozen_string_literal: true

module MCP
  ResourceTemplate = Data.define(:uri_template, :name, :description, :mime_type) do
    attr_reader :to_h

    def initialize(uri_template:, name:, description: nil, mime_type: nil)
      @to_h = {
        uriTemplate: @uri_template,
        name: @name,
        description: @description,
        mimeType: @mime_type,
      }.compact.freeze

      super(uri_template:, name:, description:, mime_type:)
    end
  end
end
