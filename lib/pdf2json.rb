module Pdf2Json
  EXECUTABLE = "pdf2json"
  BIN_DIR    = File.dirname(__FILE__) + '/../bin/'
  
  def self.bin_path
    File.join(BIN_DIR, EXECUTABLE)
  end
end