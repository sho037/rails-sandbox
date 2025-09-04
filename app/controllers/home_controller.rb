class HomeController < ApplicationController
  def index
    5.times do
      fork do
        sleep 1
        sleep rand(1..3) # 1〜3秒後に終了
        exit! 0
      end
    end

    Rails.logger.info("forked #{Process.pid}")
    # sleep 10
  end
end
