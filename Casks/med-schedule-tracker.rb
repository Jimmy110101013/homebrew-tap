cask "med-schedule-tracker" do
  version "0.2.5"
  sha256 "37de7bc27aacc5385ffcb93d57f27a56be3791832fdab319dbb0c1ab82779b34"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.2.5/Med.Schedule.Tracker_0.2.5_aarch64.dmg"
  name "Med Schedule Tracker"
  desc "NYCU Med10 clinical course tracking dashboard"
  homepage "https://github.com/Jimmy110101013/med-schedule-backend"

  app "Med Schedule Tracker.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/Med Schedule Tracker.app"],
         sudo: false
  end
end
