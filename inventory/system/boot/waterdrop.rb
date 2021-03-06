# frozen_string_literal: true

Container.boot(:waterdrop) do |_container|
  init do
    require 'water_drop'
    require 'water_drop/sync_producer'

    WaterDrop.setup do |config|
      config.deliver = true
      config.kafka.seed_brokers = ['kafka://192.168.1.67:9092']
    end
  end
end
