class Pathcopy < Formula
    desc "A cli command which copies the absolute Path of the given file or directory to the clipboard."
    homepage "https://github.com/oltoko/PathCopy"
    version "0.2.0"
    if OS.mac?
        url "https://github.com/oltoko/PathCopy/releases/download/#{version}/pc_#{version}_macos.tar.gz"
        # curl -L https://github.com/oltoko/PathCopy/releases/download/x.x.x/pc_x.x.x_macos.tar.gz | shasum -a 256
        sha256 "8b56e109021e44095353b648fe5800dc3692589ff5204dc9e3234d83b6e1ab4b"
    elsif OS.linux?
        url "https://github.com/oltoko/PathCopy/releases/download/#{version}/pc_#{version}_linux.tar.gz"
        # curl -L https://github.com/oltoko/PathCopy/releases/download/x.x.x/pc_x.x.x_linux.tar.gz | shasum -a 256
        sha256 "75035fe0bd045055da7f20c3b970bd0edadfd4d7f2c81716f4398aa20c0527e2"
    end

    def install
        bin.install "pc"
        ohai "You're done!  Run with \"pc a/relative/path\""
        ohai "For runtime flags, see \"pc --help\""
    end
end
