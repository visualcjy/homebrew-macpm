class Macpm < Formula
  desc "Rootless performance monitor for Apple Silicon"
  homepage "https://github.com/visualcjy/macpm"
  url "https://github.com/visualcjy/macpm/releases/download/v2.0/macpm-2.0-macos-arm64.tar.gz"
  sha256 "95fa36508ecf9c22ebc491befe72807c3ea9a903d5cb0a82ce502d15ce664e0e"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "macpm", "macpm-sensors"
    doc.install "README.txt"
  end

  test do
    assert_match "macpm v#{version}", shell_output("#{bin}/macpm --version")
    assert_predicate bin/"macpm-sensors", :executable?
  end
end
