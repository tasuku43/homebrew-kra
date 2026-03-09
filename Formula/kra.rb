class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.2.1/kra_v0.2.1_macos_arm64.tar.gz"
      sha256 "9c57cc90db1c2a10b19ae2ac14131783290c8604fb0e2b4cbdb8f3079acadd96"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.2.1/kra_v0.2.1_macos_x64.tar.gz"
      sha256 "96acc2377f089ffc2b2a7532e2999a96497a8dbc17c6659c52e950fa77cdd002"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.2.1/kra_v0.2.1_linux_arm64.tar.gz"
      sha256 "bf1dfebf7fb52b780c4beaa4091193d5a67cf273ad52f37adfb4fe4691b59939"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.2.1/kra_v0.2.1_linux_x64.tar.gz"
      sha256 "a82b6d2ea725bdbafc1012e18eaee9fd86c6ade1dc96c99e591685e38ad0c098"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
