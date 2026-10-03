cask "aleph" do
  version "0.1.2"
  sha256 "bf48f205c04b29ef26eb768757cdd7f0fd61554238554da88d05beea48de5e60"

  url "https://github.com/josuecuguy1307/Aleph/releases/download/v#{version}/Aleph-macOS-arm64.dmg"
  name "Aleph"
  desc "Desktop workspace for AI models, tools, and files"
  homepage "https://github.com/josuecuguy1307/Aleph"

  depends_on arch: :arm64
  depends_on :macos

  app "Aleph.app"

  caveats do
    <<~EOS
      Aleph 0.1.2 is ad-hoc signed and not notarized. macOS may block its first
      launch. After trying to open Aleph, go to System Settings → Privacy &
      Security → Open Anyway. Only continue if you trust the official download.
      See https://support.apple.com/102445.
    EOS
  end
end
