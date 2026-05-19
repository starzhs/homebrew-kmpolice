class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.14/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "3a2ae53215b4d6594d7f75574f6bc466d934919c07959c96c1e80b19c7ebb77d"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.14/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "199ddb20f1e5dd8fddc492f2fba616d7855a9b182134cec486fda95dd88fb429"
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
