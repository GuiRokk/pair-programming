require 'spec_helper'

describe 'WordHunter' do
  it 'Recebe uma matriz e lista, retorna a palavra encontrada.' do
    matrix = [['B', 'U', 'G'],
              ['J', 'U', 'S'],
              ['N', 'G', 'S']]
    words = 'BUG'
    expect(WordHunter.find(matrix, words).split).to contain_exactly(words)
  end

  it 'Recebe uma matriz e lista, retorna apenas todas palavras encontradas em ordem alfabética.' do
    matrix = [['O', 'V', 'A'],
              ['L', 'O', 'S'],
              ['O', 'E', 'P']]

    words = 'AVO OVA SOL VOE'
    expect(WordHunter.find(matrix, words).split).to contain_exactly('AVO','OVA','SOL','VOE')
  end

  it 'Recebe uma matriz e lista, retorna apenas todas palavras encontradas lidando com palindromos.' do
    matrix = [['O', 'A', 'A'],
              ['V', 'S', 'S'],
              ['O', 'A', 'P']]

    words = 'ASA OVO PAO'
    expect(WordHunter.find(matrix, words).split).to contain_exactly('ASA','OVO','PAO')
  end

  it 'Recebe uma matriz e lista, não encontra nada.' do
    matrix = [['B', 'Z', 'V'],
              ['R', 'B', 'S'],
              ['W', 'F', 'P']]

    words = 'BUG'
    expect(WordHunter.find(matrix, words)).to be_empty
  end
end