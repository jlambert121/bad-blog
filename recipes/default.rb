#
# Cookbook Name:: bad-blog
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe('bad-blog::_nginx')
include_recipe('bad-blog::_wordpress')
