describe Externallink::ViewHelpers do
  subject(:helpers) { Class.new { extend Externallink::ViewHelpers } }

  before(:each) do
    allow(helpers).to receive(:request).and_return(FakeRequest.new)
  end

  describe '#internal_url?' do
    it 'should detect:key => "value",  external URLs' do
      expect(helpers.internal_url?('http://www.google.com')).to eq(false)
    end

    it 'should ignore protocol' do
      expect(helpers.internal_url?('https://google.com')).to eq(false)
    end

    it 'should detect path only URLs as internal' do
      expect(helpers.internal_url?('/foo')).to eq(true)
    end

    it 'should detect internal URLs with domain' do
      expect(helpers.internal_url?('http://example.com')).to eq(true)
    end

    it 'should ignore path' do
      expect(helpers.internal_url?('https://example.com/foo')).to eq(true)
    end
  end

  describe '#external_url?' do
    it 'should have the opposite behavior of external_url?' do
      %w(http://wwww.google.com https://google.com).each do |url|
        expect(helpers.external_url?(url)).to eq(true)
      end

      %w(/foo http://example.com https://example.com/foo).each do |url|
        expect(helpers.external_url?(url)).to eq(false)
      end
    end
  end
end
