class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.0/kra_v0.3.0_macos_arm64.tar.gz"
      sha256 "32dbf0d97af00ae99c9adcd1e883556fb6eacc903be9d155bf673e2b5b12132d"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.0/kra_v0.3.0_macos_x64.tar.gz"
      sha256 "66c6c120c81c3c8f0a6f53bf1b99ba54a58b1ed03f18ec74d81824b31f919ac2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.0/kra_v0.3.0_linux_arm64.tar.gz"
      sha256 "99cdc848b9ab68e54dd9fa424886f8e0f17a510e032550ae71c606faeb804b59"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.0/kra_v0.3.0_linux_x64.tar.gz"
      sha256 "b58c8806b68d8e999d554b7695c1f3ef88cb99697e618c095f9e2089170f2d88"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
