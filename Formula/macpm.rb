class Macpm < Formula
  desc "Rootless performance monitor for Apple Silicon"
  homepage "https://github.com/visualcjy/macpm"
  url "https://github.com/visualcjy/macpm/releases/download/v3.4.0/macpm-3.4.0-macos-arm64.tar.gz"
  sha256 "a69b9cbd90995c93a39004ef65bbf9849792fca2a9994bea94e4dc87b3f97450"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "macpm"
    doc.install "README.txt"
  end

  test do
    assert_match "macpm v#{version}", shell_output("#{bin}/macpm --version")
  end
end
