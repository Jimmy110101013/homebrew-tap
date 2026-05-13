cask "med-schedule-tracker" do
  version "0.2.3"
  sha256 "a86a18510d43e33f25bffb42092f136de46e0951fbae37026a00edf8d64bc62b"

  url "https://github.com/Jimmy110101013/med-schedule-backend/releases/download/v0.2.3/Med.Schedule.Tracker_0.2.3_aarch64.dmg"
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
