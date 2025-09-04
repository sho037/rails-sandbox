# コマンドライン実行: rails runner "ProcessCheckJob.perform_now"
# または: bundle exec rails runner "ProcessCheckJob.perform_now"

class ProcessCheckJob < ApplicationJob
  queue_as :default

  def perform(*args)
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
