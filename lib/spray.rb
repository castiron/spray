require 'spray/version'
require 'highline/import'

module Spray
  # Alias the say method to avoid conflicts in classes that extend Thor, etc.
  # There's probably a better practice way to do this.  If you
  # know of it, please do share!
  alias_method :say_highline, :say

  def spray_error(msg)
    say_by_color "ERROR: #{msg}", 'RED'
  end

  def spray_info(msg)
    say_by_color msg, 'YELLOW'
  end

  def spray_plain(msg)
    say_by_color msg, 'WHITE'
  end

  def spray_success(msg)
    say_by_color msg, 'GREEN'
  end

  def spray_attention(msg)
    say_by_color msg, 'CYAN'
  end

  def spray_mega(msg)
    say_by_color msg, 'MAGENTA'
  end

  def spray_blank_line
    spray_plain ''
  end

  def spray_indented(&block)
    $terminal.indent do
      yield block
    end
  end

  protected

  def say_by_color(msg, color)
    say_highline %[<%= color("#{msg}", #{color}) %>]
  end
end
