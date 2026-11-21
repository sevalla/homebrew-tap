class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla/cli"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.2.1/sevalla-darwin-arm64.tar.gz"
      sha256 "4f1cc5fc09cdfdd0b961aed63d8f52774b0a44c58fd28ccf50ce5a3f993192b9"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.2.1/sevalla-darwin-x64.tar.gz"
      sha256 "1ba5973e568a38119fb626c7c7f40a5aa49fa5835a0936f90769cbf4d3cf1e48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.2.1/sevalla-linux-arm64.tar.gz"
      sha256 "ccb4aa25f174e90a5a51fe42651c2d20f9be862053a2d33864ddd5d50aafe265"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.2.1/sevalla-linux-x64.tar.gz"
      sha256 "b0a06f24a5a4576f387e5d5a84177450df1839080e19fe0d8659ae4724826879"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
