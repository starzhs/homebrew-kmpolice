class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.7/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "6fed07aeb4754a8c2089c42d700a6fb8307604a604edd9de8aedbf1166de071c"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.7/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "2de2b048b0a8541bb6737da0d9023c7956a1c97381a84686a56e623dbd807e99"
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
