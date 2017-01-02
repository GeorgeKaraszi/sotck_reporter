RSpec::Matchers.define_negated_matcher :exclude, :include
RSpec::Matchers.define_negated_matcher :excluding, :including

module RSpecExt
  def expect_unless(failure_condition, message)
    if failure_condition
      skip message
    else
      yield
    end
  end
end

RSpec.configure do |config|
  config.include RSpecExt, type: :feature
end
