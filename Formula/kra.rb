class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.1/kra_v0.3.1_macos_arm64.tar.gz"
      sha256 "ce6cd98957240796e149a4c538321e48057b2227f426561b5f1749a49dc6826b"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.1/kra_v0.3.1_macos_x64.tar.gz"
      sha256 "b46a4e7e64a79e83432d87d119f7647793e4cca3db0d99582156c05a1e0adcbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.1/kra_v0.3.1_linux_arm64.tar.gz"
      sha256 "f186ff5aea1cf2e2353fafb6b5f63c646a291d239a23498750945e49f2228afb"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.1/kra_v0.3.1_linux_x64.tar.gz"
      sha256 "d0bd3ac7a9f6890382f9b46346da7f84983747d957587b74cf8301894dc30e6d"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
