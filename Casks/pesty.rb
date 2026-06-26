cask "pesty" do
  version "1.1.0"
  sha256 "ce9442af6a57585908b18edadfc2809812076168e1f82fd8a0f855b036ec0192"

  url "https://github.com/momenbasel/pesty/releases/download/v#{version}/Pesty-#{version}.dmg"
  name "Pesty"
  desc "Free, open-source clipboard manager inspired by Paste"
  homepage "https://github.com/momenbasel/pesty"

  depends_on macos: :sonoma

  app "Pesty.app"

  zap trash: [
    "~/Library/Application Support/Pesty",
    "~/Library/Preferences/com.greycorelabs.pesty.plist",
  ]
end
