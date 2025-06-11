# typed: true
# frozen_string_literal: true

module MCP
  module Content
    Text = Data.define(:text, :annotations) do
      def initialize(text, annotations: nil)
        super(text:, annotations:)
      end

      def to_h
        { **super, type: "text" }.compact.freeze
      end
    end

    Image = Data.define(:data, :mime_type, :annotations) do
      def initialize(data, mime_type, annotations: nil)
        super(data:, mime_type:, annotations:)
      end

      # FIXME: mime_type should probably turn into mimeType
      def to_h
        { **super, type: "image" }.compact.freeze
      end
    end
  end
end
