require "formula"

class Yatsh < Formula
  homepage "https://github.com/farfanoide/yat.sh"
  head "https://github.com/farfanoide/yat.sh.git"

  url "https://github.com/farfanoide/yat.sh/archive/0.4.0.tar.gz"
  sha256 "a80c1e53638b4470a6bbffbb03fa9de364bd9fcc4bb976e28e7d2fabd2f25267"

  depends_on "tmux" => :build

  def install
    prefix.install Dir['*']
  end

  # TODO: create proper tests
  test do
    system "yat.sh", "version"
  end
end
