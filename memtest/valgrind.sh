#!/bin/bash
RUBY=/usr/bin/ruby1.9
echo '== Ruby 1.9.2 w/ Psych 1.0.0 =='
valgrind --partial-loads-ok=yes --undef-value-errors=no $RUBY testleak_rb19_psych_1_0_0.rb
echo '== Ruby 1.9.2 w/ Psych Gem 1.1.1 =='
valgrind --partial-loads-ok=yes --undef-value-errors=no $RUBY testleak_psych_1_1_1.rb
echo '== Ruby 1.9.2 w/ Psych Gem 1.1.1.mjtko1 =='
valgrind --partial-loads-ok=yes --undef-value-errors=no $RUBY testleak_psych_1_1_1_mjtko1.rb
