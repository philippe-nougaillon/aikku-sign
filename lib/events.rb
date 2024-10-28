require 'dry/events/publisher'

class Events
  include Singleton
  include Dry::Events::Publisher[:my_publisher]

  register_event('organisation.created')
  register_event('assemblee.created')
  register_event('assemblee.completed')
end