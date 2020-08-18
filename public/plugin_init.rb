Rails.application.config.after_initialize do
  Record.class_eval do
    alias :tns_as_public_parse_sub_container_display_string_orig :parse_sub_container_display_string

    def parse_sub_container_display_string(sub_container, inst, opts = {})
      out = tns_as_public_parse_sub_container_display_string_orig(sub_container, inst, opts)
      out.sub(/\s+\(.+\)$/, '')
    end
  end
end

