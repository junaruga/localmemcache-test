#/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
# https://github.com/junaruga/localmemcache
require 'localmemcache'

# 1. the memcached way
# $lm = LocalMemCache.new :namespace => :viewcounters
# 2. the GDBM way
#$lm = LocalMemCache.new :filename => "./viewcounters.lmc"
# 3. Using LocalMemCache::SharedObjectStorage
$lm = LocalMemCache::SharedObjectStorage.new :filename => "./viewcounters.lmc"
$lm[:foo] = 1
$lm[:foo]
$lm.delete(:foo)

puts "Done."
