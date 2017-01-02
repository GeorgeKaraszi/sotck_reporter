module FactoryGirlExt
  def attributes_with_foreign_keys(*args)
    FactoryGirl.build(*args).attributes.delete_if do |k, _v|
      ['id', 'type', 'created_at', 'updated_at'].member?(k)
    end
  end
end

RSpec.configure do |config|
  config.include FactoryGirlExt
  config.include FactoryGirl::Syntax::Methods
end
