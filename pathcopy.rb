class PathCopy < Formula
    desc "A cli command which copies the absolute Path of the given file or directory to the clipboard."
    homepage "https://github.com/oltoko/PathCopy"
    version "0.1.1"
    if OS.mac?
        url "https://github.com/oltoko/PathCopy/releases/download/#{version}/pc_#{version}_macos.tar.gz"
        # curl -L https://github.com/oltoko/PathCopy/releases/download/x.x.x/pc_x.x.x_macos.tar.gz | shasum -a 256
        sha256 "e12b735e6b795d24b832d3b6b6d99d2507e838e376385784b033b4197916ca9f"
    elsif OS.linux?
        url "https://github.com/oltoko/PathCopy/releases/download/#{version}/pc_#{version}_linux.tar.gz"
        # curl -L https://github.com/oltoko/PathCopy/releases/download/x.x.x/pc_x.x.x_linux.tar.gz | shasum -a 256
        sha256 "c43e651a05af127c429b30a97dabe8e196ec401f54a2fd39a3bdfdf0d0ca9d84"
    end

    def install
        bin.install "pc"
        ohai "You're done!  Run with \"pc a/relative/path\""
        ohai "For runtime flags, see \"pc --help\""
    end
end
