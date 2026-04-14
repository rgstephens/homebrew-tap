# typed: false
# frozen_string_literal: true

class Ghin < Formula
  desc "CLI for the GHIN golf handicap API"
  homepage "https://github.com/rgstephens/ghin"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.3.0/ghin_0.3.0_darwin_amd64.tar.gz"
      sha256 "c85c855fc2b4666a56d725bfac0caea5af15a7f64a491a41f01d3d4e02076ed7"

      def install
        bin.install "ghin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.3.0/ghin_0.3.0_darwin_arm64.tar.gz"
      sha256 "a96334c980d9916fb77cf3211150a7f3082ffdfac1d4430f686060073b7dba0f"

      def install
        bin.install "ghin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.3.0/ghin_0.3.0_linux_amd64.tar.gz"
      sha256 "749824ce75329ab74bdb252408ee29cb8a60d8f299c5ff83585c268f84a157de"

      def install
        bin.install "ghin"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.3.0/ghin_0.3.0_linux_arm64.tar.gz"
      sha256 "602f6a72404091cf263aba06a01dbad00ffc1f290e76b6521c632c07b771b05c"

      def install
        bin.install "ghin"
      end
    end
  end

  test do
    system "#{bin}/ghin", "--version"
  end
end
