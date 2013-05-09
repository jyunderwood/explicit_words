# coding: utf-8
require 'spec_helper'

describe ExplicitWords do

  let(:explicit_content) { "I'm wondering if this thing fucking works." }
  let(:clean_content)    { "I'm sure it's working just fine." }

  describe '#check' do
    context 'when content has explicits' do
      it 'returns true' do
        expect(ExplicitWords.check(explicit_content)).to eq true
      end
    end

    context 'when content has explicits of varying case' do
      it 'returns true' do
        expect(ExplicitWords.check('FuCK')).to eq true
      end
    end

    context 'when content does not have explicits' do
      it 'returns false' do
        expect(ExplicitWords.check(clean_content)).to eq false
      end
    end
  end
end
