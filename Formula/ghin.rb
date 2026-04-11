# typed: false
# frozen_string_literal: true

class Ghin < Formula
  desc "CLI for the GHIN golf handicap API"
  homepage "https://github.com/rgstephens/ghin"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.2.0/ghin_0.2.0_darwin_amd64.tar.gz"
      sha256 "3c0eef6c65fe0f1b7b46a4a445b882dc2b369c169d115e90ad366df808ba094b"

      def install
        bin.install "ghin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.2.0/ghin_0.2.0_darwin_arm64.tar.gz"
      sha256 "c8faa6bed0263e66e088fe099d8ed738827af94a758b3231a31a02ebdc8a49be"

      def install
        bin.install "ghin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.2.0/ghin_0.2.0_linux_amd64.tar.gz"
      sha256 "478e4c483de5554de9a6c9fe8d44d0ed066241e50a5392470f7c65b14c24a7fd"

      def install
        bin.install "ghin"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rgstephens/homebrew-tap/releases/download/ghin-v0.2.0/ghin_0.2.0_linux_arm64.tar.gz"
      sha256 "06ec9054ed135752923c737393822026a27b03dff6bfdbc44c9595012f6364ee"

      def install
        bin.install "ghin"
      end
    end
  end

  test do
    system "#{bin}/ghin", "--version"
  end
end
