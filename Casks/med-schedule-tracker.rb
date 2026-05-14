cask "med-schedule-tracker" do
  version "0.3.1"
  sha256 "ab2176c72c0a6b6778acc29df8c5d0e6bcc63f9caebb35eb363e7594bbea072f"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.3.1/Med.Schedule.Tracker_0.3.1_aarch64.dmg"
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
