cask "toolbelt" do
  version "0.2.2"
  sha256 "89024ea736fb2934b880cc44b75c83650a0d0903abc19cee304e27e4ecbf8d76"

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
