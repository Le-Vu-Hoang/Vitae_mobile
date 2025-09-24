# ----- Flutter Makefile (FVM) -----
SHELL := /bin/bash

.PHONY: help setup clean fmt lint build-apk build-ios

help: ## Show available commands
	@grep -E '^[a-zA-Z_-]+:.*?##' $(MAKEFILE_LIST) | sed -E 's/:.*?##/: /'

setup: ## First-time setup
	fvm install
	fvm flutter pub get
# 	cd ios && pod install || true

clean: ## Clean Flutter & iOS Pods
	fvm flutter clean
# 	rm -rf ios/Pods ios/Podfile.lock

fmt: ## Format Dart code
	fvm flutter format .

lint: ## Analyze code
	fvm flutter analyze

build-apk: ## Build Android APK (release)
	fvm flutter build apk --release

# build-ios: ## Build iOS (release)
# 	fvm flutter build ios --release
