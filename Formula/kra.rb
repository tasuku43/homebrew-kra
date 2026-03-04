class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.3/kra_v0.1.3_macos_arm64.tar.gz"
      sha256 "598e04cb212ba5e2508eb817c94c0ec320ed09e5ccfc22088fc4e488de742588"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.3/kra_v0.1.3_macos_x64.tar.gz"
      sha256 "111e1a08a0697924ca30746f6834c49f369bfa51b830d72619a70d89bdd60f65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.1.3/kra_v0.1.3_linux_arm64.tar.gz"
      sha256 "547f506b595d837c73fa2f33488ec677a40fe361be2e207acfb9eb54df438544"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.1.3/kra_v0.1.3_linux_x64.tar.gz"
      sha256 "2dd40c2d0521b9592e74b43438811fb08d8b991338f9059be917fc45ed4de0e9"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
