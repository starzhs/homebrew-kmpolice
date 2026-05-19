class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.15/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "3ca39a2760b0f8e5bce401c9fed43d05a6415f4bf50630af9ca515f0a1ffafb7"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.15/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "ca476e422fe32ca29cf23da3038fdfc2271fa41c4ae0e295b05d6bf85bffa41b"
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
