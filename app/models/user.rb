# frozen_string_literal: true
class User < ActiveRecord::Base
  include Authentication
end