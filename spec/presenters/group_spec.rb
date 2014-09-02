require 'spec_helper'
require_relative '../../lib/tricle/presenters/group'
require_relative '../app/test_metric'

describe Tricle::Presenters::Group do
  let(:group) { Tricle::Presenters::Group.new }

  describe '#add_metric' do
    it "should add a new metric instance" do
      group.add_metric(TestMetric)
      expect(group.metrics.size).to eq(1)
      metric = group.metrics.first
      expect(metric).to be_a(TestMetric)
    end
  end
end
