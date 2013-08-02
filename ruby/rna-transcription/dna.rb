class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def to_rna
    convert_thymidines_to_uracils
  end

  def convert_thymidines_to_uracils
    thymidines_to_uracils.each do |thymidine, uracil|
      strand.gsub!(thymidine, uracil)
    end

    strand
  end

  def thymidines_to_uracils
    {
      "T" => "U"
    }
  end
end

