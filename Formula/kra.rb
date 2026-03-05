class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.4/kra_v0.1.4_macos_arm64.tar.gz"
      sha256 "906568e0ef3b5883ae22118089a430f11197c6a350ef7fd30171e94d569bac7d"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.4/kra_v0.1.4_macos_x64.tar.gz"
      sha256 "af3da7a41350ad9bbf6002860bf97a54186aec000e6305645f7cbb421bcff955"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.4/kra_v0.1.4_linux_arm64.tar.gz"
      sha256 "9617f444cdd63574ea18f736ed3ba57197f51c76c3d69a63a2f5e458bad97fb7"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.4/kra_v0.1.4_linux_x64.tar.gz"
      sha256 "348fad42773fb6a7838bc247e54eb9a6dc1c27dc86c1d8bc711d9731676a430c"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
