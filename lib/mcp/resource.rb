# typed: strict
# frozen_string_literal: true

module MCP
  Resource = Data.define(:uri, :name, :description, :mime_type) do
    def initialize(uri:, name:, description: nil, mime_type: nil)
      super(uri:, name:, description:, mime_type:)
    end

    def to_h
      { uri:, name:, description:, mimeType: mime_type }.compact.freeze
    end
  end
end
