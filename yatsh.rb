require "formula"

class Yatsh < Formula
  homepage "https://github.com/farfanoide/yat.sh"
  head "https://github.com/farfanoide/yat.sh.git"

  url "https://github.com/farfanoide/yat.sh/archive/0.4.1.tar.gz"
  sha256 "5e81590a403222fabc7ef5db2d06186a287d7585a86720a7638789cc379a4644"

  depends_on "tmux" => :build

  def install
    prefix.install Dir['*']
  end

  # TODO: create proper tests
  test do
    system "yat.sh", "version"
  end
end
