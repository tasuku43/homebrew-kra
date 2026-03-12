class Kra < Formula
  desc "Workspace orchestration CLI with state-first guardrails"
  homepage "https://github.com/tasuku43/kra"
  license "MIT"

  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.2.2/kra_v0.2.2_macos_arm64.tar.gz"
      sha256 "3e6ef70d52ebdf8e8cca2a19bf37189ee2b870c6887fc0dd9f2e6bf6406a647a"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.2.2/kra_v0.2.2_macos_x64.tar.gz"
      sha256 "35e1cdc08567ba5b4a8262981b675ae396ec8506b714b3bbaeede5c7c143d7b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/kra/releases/download/v0.2.2/kra_v0.2.2_linux_arm64.tar.gz"
      sha256 "0796f34c015b1832f98bed1c8558e85d28aad863e1f456fba6242439752f9c2c"
    else
      url "https://github.com/tasuku43/kra/releases/download/v0.2.2/kra_v0.2.2_linux_x64.tar.gz"
      sha256 "b53fae5e8064ec3b350a3dd22f60b5ebcf16f1bb3c557d8d68672a1e5e3e3ca5"
    end
  end

  def install
    bin.install "kra"
  end

  test do
    system "#{bin}/kra", "version"
  end
end
