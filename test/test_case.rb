$:.unshift File.join(__dir__, '..', 'lib')

require 'require_all'
require 'boot'
require 'test/unit'
require 'mocha/setup'