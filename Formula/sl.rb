class Sl < Formula
  desc "Adwise Edition of SL"
  homepage "https://github.com/adwise/sl"
  url "https://github.com/Adwise/sl/archive/f98b16fe255b3508e4a06b59cab9201d6a6edf0c.tar.gz"
  sha256 "190651c1859744fe1f954090abc166e53530070e2f4b43782778abcd3bb3e901"
  license "MIT"
  version "0.1.0"
  head "https://github.com/adwise/sl.git"

  bottle do
    cellar :any_skip_relocation
  end

  uses_from_macos "ncurses"

  def install
    system "make", "-e"
    bin.install "sl"
    man1.install "sl.1"
  end

  test do
    system "#{bin}/sl", "-c"
  end
end