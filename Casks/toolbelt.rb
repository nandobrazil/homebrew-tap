cask "toolbelt" do
  version "0.2.1"
  sha256 "c29e503beadf8ac023b474ae6d40397b5b1b36eaae797adfd3ec45e71f31f98e"

  url "https://github.com/nandobrazil/toolbelt-releases/releases/download/v#{version}/Toolbelt-#{version}.dmg"
  name "Toolbelt"
  desc "Menu bar toolkit: hidden icons, window switcher, clipboard history and more"
  homepage "https://toolbelt.oconde.dev/"

  livecheck do
    url "https://toolbelt.oconde.dev/updates/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Toolbelt.app"

  uninstall quit: "dev.oconde.toolbelt"

  zap trash: [
    "~/Library/Application Support/Toolbelt",
    "~/Library/Logs/Toolbelt.log",
    "~/Library/Preferences/dev.oconde.toolbelt.plist",
  ]
end
