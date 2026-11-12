class Macpm < Formula
  desc "Rootless performance monitor for Apple Silicon"
  homepage "https://github.com/visualcjy/macpm"
  url "https://github.com/visualcjy/macpm/releases/download/v2.2/macpm-2.2-macos-arm64.tar.gz"
  sha256 "707d1708e46ff9b7fece412f36e3dee27438b1164c325661a484ad11dcd1c536"
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
