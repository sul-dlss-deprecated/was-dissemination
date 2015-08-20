require 'spec_helper'

describe Robots::DorRepo::WasDissemination::StartSpecialDissemination do
  let(:druid_obj) { Dor::Item }
  let(:contentMetadata) { Dor::ContentMetadataDS }

  describe '.initialize' do
    it 'initalizes the robot with valid parameters' do
      robot = Robots::DorRepo::WasDissemination::StartSpecialDissemination.new
      expect(robot.instance_variable_get(:@repo)).to eq('dor')
      expect(robot.instance_variable_get(:@workflow_name)).to eq('wasDisseminationWF')
      expect(robot.instance_variable_get(:@step_name)).to eq('start-special-dissemination')
    end
  end

  describe '.perform' do
    it 'does nothing for collection object' do
      allow(Dor::Item).to receive(:find).and_return(druid_obj)
      allow(druid_obj).to receive_message_chain('identityMetadata.objectType').and_return(['collection'])

      robot = Robots::DorRepo::WasDissemination::StartSpecialDissemination.new
      expect(robot).not_to receive(:initialize_workflow)

      robot.perform('druid:ab123cd4567')
    end
    it 'initializes wasSeedDisseminationWF for webarchive-seed item' do
      allow(Dor::Item).to receive(:find).and_return(druid_obj)
      allow(druid_obj).to receive(:contentMetadata).and_return(contentMetadata)
      allow(druid_obj).to receive_message_chain('identityMetadata.objectType').and_return(['item'])
      allow(contentMetadata).to receive(:contentType).and_return(['webarchive-seed'])

      robot = Robots::DorRepo::WasDissemination::StartSpecialDissemination.new
      expect(druid_obj).to receive(:initialize_workflow).with('wasSeedDisseminationWF').and_return('')

      robot.perform('druid:ab123cd4567')
    end
    it 'initializes wasCrawlDisseminationWF for crawl item' do
      allow(Dor::Item).to receive(:find).and_return(druid_obj)
      allow(druid_obj).to receive(:contentMetadata).and_return(contentMetadata)
      allow(druid_obj).to receive_message_chain('identityMetadata.objectType').and_return(['item'])
      allow(contentMetadata).to receive(:contentType).and_return(['file'])

      robot = Robots::DorRepo::WasDissemination::StartSpecialDissemination.new
      expect(druid_obj).to receive(:initialize_workflow).with('wasCrawlDisseminationWF').and_return('')

      robot.perform('druid:ab123cd4567')
    end
  end
end
