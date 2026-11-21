class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla/cli"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.3.0/sevalla-darwin-arm64.tar.gz"
      sha256 "63a78ca8ed7ea71c010247302886a926ac4d9db927facd87ed90982874634092"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.3.0/sevalla-darwin-x64.tar.gz"
      sha256 "0b5cef4edb076701cc5642fa72436681b46c39eb01aecdecccfca6888e8744f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.3.0/sevalla-linux-arm64.tar.gz"
      sha256 "5807363c1bfaf4dd58f137c31aeb291c660ab42304233020cc75069288413c5a"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.3.0/sevalla-linux-x64.tar.gz"
      sha256 "5032b083e87731ce7f21dfca6a1ffaa05230013b366a892fb6193d40320a7e84"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
