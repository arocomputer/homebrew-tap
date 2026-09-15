class EBeta < Formula
  desc "Small, extensible coding agent for your terminal"
  homepage "https://e.intuitum.sh"
  version "0.0.1-beta.9.gd2b45315c43c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/intuitums/e-beta/releases/download/v0.0.1-beta.9.gd2b45315c43c/e-aarch64-apple-darwin.tar.gz"
      sha256 "5b1981f589cba689b30d1458320e84c714beaac902c058506f716bd3bcd0fe3b"
    end
    on_intel do
      url "https://github.com/intuitums/e-beta/releases/download/v0.0.1-beta.9.gd2b45315c43c/e-x86_64-apple-darwin.tar.gz"
      sha256 "256095593246c8d9d73c177c56eb6399d07e10ea6ed99fb2ef06a61fe85b6e18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/intuitums/e-beta/releases/download/v0.0.1-beta.9.gd2b45315c43c/e-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6e1471858ea2d1146f7a37220b0c1d325555b85b204d63143d3078504617494"
    end
    on_intel do
      url "https://github.com/intuitums/e-beta/releases/download/v0.0.1-beta.9.gd2b45315c43c/e-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc9b3310b839445ca6849c8cd041ddde16d63a344e67b91b4fb6813dffd892e0"
    end
  end

  def install
    libexec.install "e"
    (libexec/".e-install-method").write "homebrew-beta\n"
    bin.install_symlink libexec/"e" => "e-beta"
  end

  test do
    assert_equal "e #{version}", shell_output("#{bin}/e-beta --version").strip
  end
end
