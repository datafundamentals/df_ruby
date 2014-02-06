@test "verifies ruby installation" {
	run ruby -version
	["status" -eq 1]
	["output" -eq "ruby*"]
}