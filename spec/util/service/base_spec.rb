#!/usr/bin/evn rspec

require 'spec_helper'
require File.join(File.dirname(__FILE__), '../../../', 'util', 'service', 'base.rb')

module MCollective
  module Util
    module Service
      describe Base do
        let(:base) { Base.new('rspec', {:key1 => 'val1', :key2 => 'val2'}) }

        describe "#initialize" do
          it 'should set the correct options hash' do
            base.options.should == {:key1 => 'val1', :key2 => 'val2'}
          end
        end

        describe "#start" do
          it 'should fail to start' do
            lambda {
              base.start
            }.should raise_error(RuntimeError, "error. MCollective::Util::Service::Base Does not implement #start")
          end
        end

        describe "#stop" do
          it 'should fail to stop' do
            lambda {
              base.stop
            }.should raise_error(RuntimeError, "error. MCollective::Util::Service::Base Does not implement #stop")
          end
        end

        describe "#restart" do
           it 'should fail to restart' do
            lambda {
              base.restart
            }.should raise_error(RuntimeError, "error. MCollective::Util::Service::Base Does not implement #restart")
          end
        end

        describe "#status" do
           it 'should fail to display status' do
            lambda {
              base.status
            }.should raise_error(RuntimeError, "error. MCollective::Util::Service::Base Does not implement #status")
          end
        end
      end
    end
  end
end
