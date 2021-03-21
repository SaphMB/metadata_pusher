require './metadata_pusher'

RSpec.describe MetadataPusher do
  let(:subject) { described_class.new('spec/fixtures/mock_metadata_folder', 'spec/fixtures/mock_metadata_folder') }
    
    describe "#metadata_files" do
      it "returns a list of all the metadata files" do
        files = subject.metadata_files
        expect(files).to contain_exactly('photo_123.json', 'photo_456.json', 'photo_789.json')
      end
    end
end