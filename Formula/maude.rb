class Maude < Formula
  desc "Equational and rewriting logic specification and programming language"
  homepage "http://maude.cs.illinois.edu/"
  license "GPL-3.0-only"
  bottle :unneeded

  conflicts_with "maude", because: "Maude is already installed :)"

  if OS.mac? && Hardware::CPU.intel?
    url "http://maude.cs.illinois.edu/w/images/9/93/Maude-3.1-macos.zip"
    sha256 "2d1ba91beba27c65ae0e72b8a0596962cd2f2d008ffdfab168a5aa9c3dc6320d"
  end

  def install
    bin.install "linear.maude"
    bin.install "machine-int.maude"
    bin.install "metaInterpreter.maude"
    bin.install "model-checker.maude"
    bin.install "prelude.maude"
    bin.install "socket.maude"
    bin.install "maude.darwin64"

    (bin/"maude").write_env_script("#{bin}/maude.darwin64", MAUDE_LIB: bin)
  end
end
