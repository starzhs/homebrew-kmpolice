class Kmpolice < Formula
  desc "Static checker for Kotlin Multiplatform -> iOS Swift API impact"
  homepage "https://github.com/starzhs/kmpolice"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.13/kmpolice-aarch64-apple-darwin.tar.gz"
      sha256 "b02a07c5ceafd4698e8d6ee77f8238f646885f811fc357c19882edd62f552fb4"
    else
      url "https://github.com/starzhs/kmpolice/releases/download/v0.1.13/kmpolice-x86_64-apple-darwin.tar.gz"
      sha256 "81ef73a2b4c76420f8f3ce2515868ac83d0bd6d889bb1f3b3a04a4aeef00506e"
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
