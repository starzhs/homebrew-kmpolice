class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.12/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "00e7c92c7db1d8b418dc6f544864753e34d6247f4d6772f70596016774de732e"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.12/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "18763a93d7db3032de4bb8c9a824f798c07bd5706b53b89ecaa2e4c8fcb3eb21"
    end
  end

  def install
    bin.install "kmpolice"
  end

  test do
    output = shell_output("#{bin}/kmpolice --help")
    assert_match "Usage: kmpolice", output
  end
end
