class Macpm < Formula
  desc "Rootless performance monitor for Apple Silicon"
  homepage "https://github.com/visualcjy/macpm"
  url "https://github.com/visualcjy/macpm/releases/download/v3.3.1/macpm-3.3.1-macos-arm64.tar.gz"
  sha256 "0dd117a8b4e7203ea1d836a8d3fe15536de1cba773420a81c8e6b1d096dbf6fe"
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
