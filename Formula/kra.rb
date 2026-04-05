class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.4/kra_v0.3.4_macos_arm64.tar.gz"
      sha256 "03a3930400da1fc1f0f4bf8e918434f43ddb6e3930e6f5c03cb5aab016f682f0"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.4/kra_v0.3.4_macos_x64.tar.gz"
      sha256 "b00f3f57d83fac62f3cdeadd6708fd8c456fbb56e56661e0a033d0b1d5db51f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.4/kra_v0.3.4_linux_arm64.tar.gz"
      sha256 "b429f9f1c2f6ab550b1442a2648b6aa46707dab263bc76af6a595b1486d459a6"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.4/kra_v0.3.4_linux_x64.tar.gz"
      sha256 "a5362d10b64ecf70b6e6df02021caabfcf529bdb0f9ab6dc4ac36ccbcd28f343"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
