class DNA
  def initialize(dna_strand)
    @dna_strand = dna_strand
  end

  def to_rna
    convert_thymidines_to_uracils
  end

  def convert_thymidines_to_uracils
    thymidines.map { |nucleotide| thymidine_to_uracil(nucleotide) }.join
  end

  def thymidines
    @dna_strand.chars
  end

  def thymidine_to_uracil(nucleotide)
    case nucleotide
    when "T"
      "U"
    else
      nucleotide
    end
  end
end

