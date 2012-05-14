module Pdf2Json
  BIN_DIR = File.dirname(__FILE__) + '/../bin/'
  
  module BinaryHelpers
    def pdf2json(*args)
      `#{Pdf2Json::BIN_DIR} #{args.join(' ')}`
    end
  end
end