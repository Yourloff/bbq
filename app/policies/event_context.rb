class EventContext
  attr_reader :event, :pincode

  def initialize(event:, pincode:)
    @event = event
    @pincode = pincode
  end
end
