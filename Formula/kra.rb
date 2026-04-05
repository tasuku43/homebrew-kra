class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.3/kra_v0.3.3_macos_arm64.tar.gz"
      sha256 "8340bf411085f22bbf34c2f02f43af44602b3bb071a215e22d68a8eb7075056f"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.3/kra_v0.3.3_macos_x64.tar.gz"
      sha256 "8a07e66d9dcb221cd25f560c86a08bee2ce8a68d8673d0dc9bea25076d7fce6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.3.3/kra_v0.3.3_linux_arm64.tar.gz"
      sha256 "1126460adf9b15ea751deed4ca271b3d0790299519d9b970b0a8ddf65432b495"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.3.3/kra_v0.3.3_linux_x64.tar.gz"
      sha256 "c7d4fce46f0f893f9c3a96800b8d5d362758bae2cae8b5ab3ad2ec99956cdee4"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
