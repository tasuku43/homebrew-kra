class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.0/kra_v0.1.0_macos_arm64.tar.gz"
      sha256 "6251b62f709ca6aa5da20cd62c54544c32f4f6027c0a55840dd222ec42926ed8"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.0/kra_v0.1.0_macos_x64.tar.gz"
      sha256 "e87e9a0947d244c66be962203453c046aa8162578898a75ef124d3f33a0a75b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.0/kra_v0.1.0_linux_arm64.tar.gz"
      sha256 "55d043a70e6ceb24279d451312edfd0f99f15b6ae8ef2bb3c91981c671481a9f"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.0/kra_v0.1.0_linux_x64.tar.gz"
      sha256 "cc5e7e9fe70ee819b96e35896a34556fa7e445041ce9bc6653baa16f58fe9c69"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
