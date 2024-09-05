.PHONY : watch
watch:
	dart run build_runner watch --delete-conflicting-outputs

.PHONY : fix
fix:
	dart fix --apply

.PHONY : format
format: fix
	dart format .

.PHONY : format
gen-l10n:
	flutter gen-l10n