class Maude < Formula
  desc "Maude is a equational and rewriting logic specification and programming language for a wide range of applications"
  homepage "http://maude.cs.illinois.edu/"
  version "3.1"
  license "GPL-3.0-only"
  bottle :unneeded

  conflicts_with "maude", because: "Maude is already installed :)"

  if OS.mac? && Hardware::CPU.intel?
    url "http://maude.cs.illinois.edu/w/images/9/93/Maude-3.1-macos.zip"
    sha256 "7b97f675ede00edb8435cee08ea41e5226eb8daf7dea7c52c7c79d70dd5fc0ff"
  end

  def install
    bin.install "maude-3.1/linear.maude"
    bin.install "maude-3.1/machine-int.maude"
    bin.install "maude-3.1/metaInterpreter.maude"
    bin.install "maude-3.1/model-checker.maude"
    bin.install "maude-3.1/prelude.maude"
    bin.install "maude-3.1/socket.maude"
    bin.install "maude-3.1/term-order.maude"
    bin.install "maude-3.1/maude.darwin64" => "maude"
  end

end
