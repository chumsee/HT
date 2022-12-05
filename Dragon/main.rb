# frozen_string_literal: true

require_relative 'head'

head1 = Head.new
head1.look(:r, 8)
head1.look(:l, 500)
head1.look(:f, 11)
head1.look(:b, 0)
head1.look(:l, 8)
p head1.timeline
p head1.side
p head1.minutes
