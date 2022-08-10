#!/bin/bash
lastlog | grep -i "pru5" | awk '{print $1}'|xargs -I {} usermod -L {}
