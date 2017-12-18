#!/bin/bash
kill $(ps aux | grep '[t]mux' | awk '{print $2}')
