to_rna <- function(dna) {
  unlist(convertStrand(strsplit(dna, "")[[1]]));
}

convertStrand <- function(dNAVector) {
  idx=1;
  rna = list();
  for(dna in dNAVector) {
    rna[idx] <- convertNucleotide(dna);
    idx = idx + 1;
  }
  
  paste(rna,collapse='');
}

convertNucleotide <- function(dna) {
  var.rna = switch(dna,
         'G' = 'C',
         'C' = 'G',
         'T' = 'A',
         'A' = 'U',
         stop('Bad input'));
  print(var.rna);
}
