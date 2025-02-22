#!/bin/sh

# Run the watchexec command
watchexec --restart --verbose --clear --wrap-process=session --stop-signal SIGTERM --exts gleam --watch src/ -- "
gleam run"
