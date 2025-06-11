# frozen_string_literal: true

module MCP
  class Tool
    Annotations = Data.define(:title, :read_only_hint, :destructive_hint, :idempotent_hint, :open_world_hint) do
      attr_reader :to_h

      def initialize(title: nil, read_only_hint: nil, destructive_hint: nil, idempotent_hint: nil, open_world_hint: nil)
        @to_h = {
          title:,
          readOnlyHint: read_only_hint,
          destructiveHint: destructive_hint,
          idempotentHint: idempotent_hint,
          openWorldHint: open_world_hint,
        }.compact.freeze

        super(title:, read_only_hint:, destructive_hint:, idempotent_hint:, open_world_hint:)
      end
    end
  end
end
