class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla/cli"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.2.0/sevalla-darwin-arm64.tar.gz"
      sha256 "a9eb978d922161a6fff92c66d71ff2af349ff820c374875068853d953993a408"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.2.0/sevalla-darwin-x64.tar.gz"
      sha256 "97b731ab72c086abd13ae84cf7838d43f06dbbd105e493164000f37439b00c05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.2.0/sevalla-linux-arm64.tar.gz"
      sha256 "5a698962d81a06a0dff72685bc7d7ca867da14b23e24c214f9aef040a7ead939"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.2.0/sevalla-linux-x64.tar.gz"
      sha256 "be3d0aac5677e4a212f362d013f6fee8b653904151d9b35ac3c31665055fffcd"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
