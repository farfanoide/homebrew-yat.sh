require "formula"

class Yatsh < Formula
  homepage "https://github.com/farfanoide/yat.sh"
  head "https://github.com/farfanoide/yat.sh.git"

  url "https://github.com/farfanoide/yat.sh/archive/0.3.0.tar.gz"
  sha1 "94c1651a5e31f606ef0294fb50b1546700aaf170"

  depends_on "tmux" => :build

  def install
    prefix.install Dir['*']
  end

  # TODO: create proper tests
  test do
    system "yat.sh", "version"
  end
end
