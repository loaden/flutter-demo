set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
target := if os() == "macos" { "macos" } else if os() == "windows" { "windows" } else { "linux" }

default:
  flutter run

arg arg:
  flutter run {{arg}}

run:
  flutter run -d {{target}}

get:
  flutter pub get

dart:
  dart run build_runner build

upgrade:
	flutter pub upgrade --major-versions
