class Acronym
  def self.abbreviate phrase
    phrase
      .tr("-", " ")
      .split
      .map(&:chr)
      .join
      .upcase
  end
end
