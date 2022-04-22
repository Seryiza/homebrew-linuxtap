class KittyBinary < Formula
    desc "A cross-platform, fast, feature full, GPU based terminal emulator"
    homepage "https://github.com/kovidgoyal/kitty"
    version "0.25.0"
    sha256 "6a64e8a74acc35fd953b5554308685c724f87410e58e918281f95116ec09ad8f"
    url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}-x86_64.txz"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/kitty")
    end

    def caveats; <<~EOS
        Executable is linked as "kitty".
        EOS
    end
end
