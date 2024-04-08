#!/bin/sh

cd core && bundle exec rake test && cd .. && cd cli && bundle exec rake
