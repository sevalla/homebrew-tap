class Sevalla < Formula
  desc "Official CLI for the Sevalla cloud platform"
  homepage "https://github.com/sevalla/cli"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.4.0/sevalla-darwin-arm64.tar.gz"
      sha256 "c65f563f0423f62b88bc7655a4fdc6e181a3b73b2db0879a5629800ebd24b376"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.4.0/sevalla-darwin-x64.tar.gz"
      sha256 "0cd3590490cfdeec5740f9da15fa76d777d01208c560a5ea0c034ea188a15015"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sevalla/cli/releases/download/v2.4.0/sevalla-linux-arm64.tar.gz"
      sha256 "8e05595145a03139d351ece7ebee750ee99648cb2b8a6c0eb3dd8cdcc70cd811"
    end
    on_intel do
      url "https://github.com/sevalla/cli/releases/download/v2.4.0/sevalla-linux-x64.tar.gz"
      sha256 "49e80835c2bcf5adf8c9f129e15da506d72cb1102f612f14274e7e5040b86e2b"
    end
  end

  def install
    bin.install Dir["sevalla-*"].first => "sevalla"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sevalla --version")
  end
end
