# typed: strict
# frozen_string_literal: true

module MCP
  class Resource
    # FIXME: Should mime_type to_h as mimeType?
    # FIXME: Is it a problem that we lose inheritance here?

    Contents = Data.define(:uri, :mime_type) do
      def initialize(uri:, mime_type: nil)
        super(uri:, mime_type:)
      end

      def to_h
        { uri:, mime_type: }.compact.freeze
      end
    end

    TextContents = Data.define(:text, :uri, :mime_type) do
      def initialize(text:, uri:, mime_type:)
        super(text:, uri:, mime_type:)
      end

      def to_h
        { text:, uri:, mime_type: }.compact.freeze
      end
    end

    BlobContents = Data.define(:data, :uri, :mime_type) do
      def initialize(data:, uri:, mime_type:)
        super(data:, uri:, mime_type:)
      end

      def to_h
        { data:, uri:, mime_type: }.compact.freeze
      end
    end
  end
end
