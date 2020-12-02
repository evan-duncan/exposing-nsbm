# frozen_string_literal: true

class ActiveSessionController < ApplicationController
  include SessionRequired
end