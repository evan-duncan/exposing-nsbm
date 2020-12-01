# frozen_string_literal: true

class LicenseNotice
  def self.call
    <<-msg

Exposing NSBM Copyright (C) 2020 Evan Duncan
This program comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it
under certain conditions.

    msg
  end
end