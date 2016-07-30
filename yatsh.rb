require "formula"

class Yatsh < Formula
  homepage "https://github.com/farfanoide/yat.sh"
  head "https://github.com/farfanoide/yat.sh.git"

  url "https://github.com/farfanoide/yat.sh/archive/0.3.0.tar.gz"
  sha256 "224d84227e7122250e12ae803a28a71e824cb5dc8404cbcb625b1e8587ff296d"

  depends_on "tmux" => :build

  def install
    prefix.install Dir['*']
  end

  # TODO: create proper tests
  test do
    system "yat.sh", "version"
  end
end
