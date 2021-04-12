require 'spec_helper'

describe 'WordHunter' do
  it 'Recebe uma matriz e lista, retorna palavras encontradas.' do
    matrix = [['B', 'U', 'G'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = 'BUG'
    expect(WordHunter.find(matrix, words)).to include('BUG')
  end

  it 'Recebe uma matriz e lista, retorna apenas as palavras solicitas.' do
    matrix = [['B', 'U', 'G'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = 'BUG'
    expect(WordHunter.find(matrix, words)).to contain_exactly('BUG')
  end
end