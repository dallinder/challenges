# use each_slice on array of string chars
# methods that I need are
  # of_codon(string)
    # return the correct codon as a string
  # of_rna(strand)
    #return an array of codons
    # raise InvalidCodonError if strand is not valid

class InvalidCodonError < StandardError; end
class Translation
  CODONS = {'AUG': 'Methionine',
          'UUU': 'Phenylalanine', 'UUC': 'Phenylalanine',
          'UUA': 'Leucine', 'UUG': 'Leucine',
          'UCU': 'Serine', 'UCC': 'Serine', 'UCA': 'Serine', 'UCG': 'Serine',
          'UAU': 'Tyrosine', 'UAC': 'Tyrosine',
          'UGU': 'Cysteine', 'UGC': 'Cysteine',
          'UGG': 'Tryptophan',
          'UAA': 'STOP', 'UAG': 'STOP', 'UGA': 'STOP'}

  def self.of_codon(string)
    CODONS[string.to_sym]
  end

  def self.of_rna(strand)
    result = []
    strand.chars.each_slice(3) { |codon| result << codon }

    result.take_while { |codon| CODONS[codon.join.to_sym] != 'STOP'}.map do |codon|
      if of_codon(codon.join) == nil
        raise InvalidCodonError
      else
        of_codon(codon.join)
      end
    end
  end
end
