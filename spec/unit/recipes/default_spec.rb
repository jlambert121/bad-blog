#
# Cookbook Name:: bad-blog
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'bad-blog::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end

  it 'includes recipies' do
    expect(chef_run).to include_recipe('bad-blog::_nginx')
    expect(chef_run).to include_recipe('bad-blog::_wordpress')
  end
end
