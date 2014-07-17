class CesarCipher


  def ciph(ciph)
    key = ('a'..'z').to_a

    new_ciph = ciph.split(//).map do |cip|
    key.index(cip) < 13 ? key[key.index(cip) + 13] : key[key.index(cip) - 13]
    #   if cip == " "
    #     cip
    #   elsif key.index(cip) < 13 && cip != " "
    #     key[key.index(cip) + 13]
    #   else
    #     key[key.index(cip)-13]
    #   end
    # end
    return new_ciph.join
  end

end
