module Rollbar
  class RollbarWrapper
    include Native::Wrapper

    def initialize(native)
      @native = native
    end

    def to_n
      @native
    end
  end
end
