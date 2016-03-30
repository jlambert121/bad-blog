#
# Cookbook Name:: bad-blog
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'bad-blog::_wordpress' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'includes recipies' do
    expect(chef_run).to include_recipe('wordpress::nginx')
  end
end
