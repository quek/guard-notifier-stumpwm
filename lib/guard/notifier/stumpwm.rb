require 'guard/notifier'

module Guard
  module Notifier
    class Stumpwm < Base
      VERSION = '0.0.1'

      def self.available?(opts={})
        !!`stumpish version`
      end

      def notify(message, opts={})
        super

        color =
          case opts[:type]
          when :success
            2                   # green
          when :failed
            1                   # red
          else
            3
          end                   # yellow

        form = <<EOT
(let ((*executing-stumpwm-command* nil))
  (message "^#{color}#{opts[:title]}~%~%#{message}"))
EOT
        `stumpish eval '#{form}'`
      end
    end
  end
end

Guard::Notifier::NOTIFIERS << { stumpwm: ::Guard::Notifier::Stumpwm }
