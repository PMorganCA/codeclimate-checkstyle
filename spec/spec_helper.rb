$:.unshift(File.expand_path("../lib", File.dirname(__FILE__)))

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.color = true

=begin
  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = "spec/examples.txt"
  config.disable_monkey_patching!
  config.warnings = true
  if config.files_to_run.one?
    config.default_formatter = "doc"
  end
  config.profile_examples = 2
  config.order = :random
  Kernel.srand config.seed
=end
end

RSpec::Matchers.define :be_an_issue do
  match do |actual|
    begin
      json = JSON.parse(actual.gsub("\0", ""))
      expect(json).to include("type" => "issue")
    rescue
      false
    end
  end

  description do
    "respect issue format"
  end
end
