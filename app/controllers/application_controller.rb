class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Signal.trap("CHLD") do
  #   loop do
  #     begin
  #       pid = Process.waitpid(-1, Process::WNOHANG)
  #       break unless pid
  #       Rails.logger.info("reaped #{pid}") # 重くしない
  #     rescue Errno::ECHILD
  #       break
  #     end
  #   end
  # end
end
