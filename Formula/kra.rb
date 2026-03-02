class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.1/kra_v0.1.1_macos_arm64.tar.gz"
      sha256 "6e578f38f615affa04a78b9df3b355e74d85c0ade281ea13e856f4cfa29d6774"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.1/kra_v0.1.1_macos_x64.tar.gz"
      sha256 "4b1807ecbe589175eb4b6f2d1aeb78be4eabf0ef7e1c94e8d88723f8db9eadf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.1/kra_v0.1.1_linux_arm64.tar.gz"
      sha256 "9265d7f091edd1cde886192a5e7afc38e33d1ea3e96c672d47f6478759c43973"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.1/kra_v0.1.1_linux_x64.tar.gz"
      sha256 "a0d563878018422bb32a90760d691a1afc4f8c12f61b97a0fb810fcaaf02148c"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
