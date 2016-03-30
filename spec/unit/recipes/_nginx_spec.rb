#
# Cookbook Name:: bad-blog
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'bad-blog::_nginx' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'includes recipies' do
    expect(chef_run).to include_recipe('nginx')
    expect(chef_run).to include_recipe('hhvm')
  end

  it 'should disable default site' do
    expect(chef_run).to include_nginx_site('default')
  end
end
