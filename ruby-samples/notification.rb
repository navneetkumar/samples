class NotificationService

  def self.configure(&block)
  	@config = {}
  	@config[:store] = "12"
  	@s = yield
  	puts @s
    # @config = block.call()
    puts "in the methods = #{@s}"
  end

  def self.config
    @config or raise 'ProfilesClient was not configured correctly'
  end

end

NotificationService.configure do |config|
  config = {}
  config[:cool] = 3
  config.raj = 5
  # config.publish_key = ENV['PUBNUB_PUBLISH_KEY'] || 'pub-c-f7ab0e15-63fe-40f8-bf16-5d4f1dd79a04'
end