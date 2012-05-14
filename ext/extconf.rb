require 'pathname'
dir = Pathname.new File.expand_path(File.dirname(__FILE__))
gem_dir = dir.join("..")
bin_dir = gem_dir.join("bin")
pdf2json_dir = gem_dir.join("pdf2json-0.52-source")

Dir.chdir(pdf2json_dir) do
  system "./configure --prefix=#{gem_dir} --bindir=#{bin_dir} && make && make install"
end

# from https://github.com/pwnall/zerg_support/blob/master/lib/zerg_support/gems.rb
# tricks rubygems into believeing that the extension compiled and worked out
module Zerg
  module Support
    module Gems
      def self.emulate_extension_install(extension_name)
        File.open('Makefile', 'w') { |f| f.write "all:\n\ninstall:\n\n" }
        File.open('make', 'w') do |f|
          f.write '#!/bin/sh'
          f.chmod f.stat.mode | 0111
        end
        File.open(extension_name + '.so', 'w') {}
        File.open(extension_name + '.dll', 'w') {}
        File.open('nmake.bat', 'w') { |f| }
      end
    end
  end
end

Zerg::Support::Gems.emulate_extension_install('pdf2json')