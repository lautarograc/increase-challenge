# frozen_string_literal: true
if defined?(Rails::Server)
  FetchParseSummary.new.parse_txt
  ParseClient.new.parse_client
end