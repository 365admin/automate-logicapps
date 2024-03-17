package main

import (
	"runtime/debug"
	"strings"

	"github.com/365admin/automate-logicapps/magicapp"
)

func main() {
	info, _ := debug.ReadBuildInfo()

	// split info.Main.Path by / and get the last element
	s1 := strings.Split(info.Main.Path, "/")
	name := s1[len(s1)-1]
	description := `---
title: automate-logicapps
description: Describe the main purpose of this kitchen
---

# automate-logicapps
`
	magicapp.Setup(".env")
	magicapp.RegisterServeCmd("automate-logicapps", description, "0.0.1", 8080)
	magicapp.RegisterCmds()
	magicapp.Execute(name, "automate-logicapps", "")
}
