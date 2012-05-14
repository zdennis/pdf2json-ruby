module Pdf2Json
  BIN_DIR = File.dirname(__FILE__) + '/../bin/'
  
  module Helpers
    def pdf2json(*args)
      `#{Pdf2Json::BIN_DIR} #{args.join(' ')}`
    end

    def pdf2json_binary_path(*args)
      File.join Pdf2Json::BIN_DIR, "pdf2json"
    end
  end
end