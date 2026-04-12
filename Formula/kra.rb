class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.3.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.6/kra_v0.3.6_macos_arm64.tar.gz"
      sha256 "9695032a452c814c5ef6b4cb0b2cc2c4fe7176a2ecd551c99bed223dcc531ff2"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.6/kra_v0.3.6_macos_x64.tar.gz"
      sha256 "a8bf530d29f0fa36fc92d5e9a36bfd28b31b2af256fdbe95276e964f090a9f51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.6/kra_v0.3.6_linux_arm64.tar.gz"
      sha256 "db3f0c65591ac1f7a23d7de36df18ccbd430cf3b1f094ffe4e638b385b3ec630"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.6/kra_v0.3.6_linux_x64.tar.gz"
      sha256 "b8e6330595107b90f1959c9b5ec4ee05e333f0be6b7127533ece6155c6fe86da"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
