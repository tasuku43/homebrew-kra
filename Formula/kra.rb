class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.2/kra_v0.3.2_macos_arm64.tar.gz"
      sha256 "8928f7de8a6957ffb8066a859a04ace6fbf25afbfcadf48520f8ad2e93cf7569"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.2/kra_v0.3.2_macos_x64.tar.gz"
      sha256 "65b6e17bd320ffeeb14b0eedfa3e7204d96cbf7fd856a180181ca6e01812e157"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.2/kra_v0.3.2_linux_arm64.tar.gz"
      sha256 "275e17d21ba94882a2ce471dfa50b01dbbb546cefb284fc085fd03d03362535d"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.2/kra_v0.3.2_linux_x64.tar.gz"
      sha256 "b07e682d2217144d3c7611ee8710d34eb2b6060925c4ea9b4f4c6dc445014a85"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
