#!/bin/bash

xargs -I{} sudo systemctl enable --now {} < services.txt || true
xargs -I{} systemctl --user enable --now {} < user-services.txt || true

