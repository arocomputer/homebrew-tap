class EDev < Formula
  desc "Coding agent you can put anywhere"
  homepage "https://e.intuitum.sh"
  version "0.0.1-dev.18.g881605343379"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/intuitums/e/releases/download/v0.0.1-dev.18.g881605343379/e-aarch64-apple-darwin.tar.gz"
      sha256 "16fe9cd82d384b1345ef18e0dc57375a243655206043e2993d96c6bbc688fa7b"
    end
    on_intel do
      url "https://github.com/intuitums/e/releases/download/v0.0.1-dev.18.g881605343379/e-x86_64-apple-darwin.tar.gz"
      sha256 "13142951089654d671c3fa4c2242f7995f3590de9660b14387759c72f389c421"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/intuitums/e/releases/download/v0.0.1-dev.18.g881605343379/e-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcb66a3d3f62a9586eff958ff4c364e5af06ba938049493f7e5cad9d5368bb9d"
    end
    on_intel do
      url "https://github.com/intuitums/e/releases/download/v0.0.1-dev.18.g881605343379/e-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "816aafba4e8864ea92185885bc4291779ba2d2d88cba86f865bab276fcd8d790"
    end
  end

  def install
    libexec.install "e"
    (libexec/".e-install-method").write "homebrew-dev\n"
    bin.install_symlink libexec/"e" => "e-dev"
  end

  test do
    assert_equal "e #{version}", shell_output("#{bin}/e-dev --version").strip
  end
end
