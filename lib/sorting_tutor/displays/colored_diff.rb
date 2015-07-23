require 'thor'

module SortingTutor
  module Displays
    class ColoredDiff
      include Thor::Base

      def initialize(frame_log)
        @frame_log = frame_log
      end

      def output
        mod_log = @frame_log.dup
        mod_log.each_with_index do |frame, index|
          if frame.changed?
            frame[frame.changed_indicies[0]] = set_color(frame[frame.changed_indicies[0]], :green)
            frame[frame.changed_indicies[1]] = set_color(frame[frame.changed_indicies[1]], :red)
          end

          frame.compared_indicies.each do |index|
            frame[index] = set_color(frame[index], :bold)
          end

          frame_label = (index + 1).to_s
          frame_label = "Frame " + frame_label + ":" + " " * (3 - frame_label.length)
          say(frame_label, :yellow, false)
          frame.each do |item|
            say(item.to_s + " ", nil, false)
          end
          say("\n")
        end
      end

    end
  end
end
