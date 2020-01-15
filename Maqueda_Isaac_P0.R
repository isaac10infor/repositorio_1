# 15/20/20

# Ejercicio 1 
# A partir de las siguientes secuencias concatenadas de RNA que te envío 
# como archivo adjunto en formato fasta encuentra (usando librerías especializadas) 
# la secuencia correspondiente de aminoácidos.

# Primero se descargó el archivo en un directorio llamado "Genómica Funcional"
# Entonces me dirijí al directorio con la función setwd y verifiqué que se encontrara el archivo
setwd("/Users/isaacalejandromaquedacardenas/infor/rstudio_bioinfo/Genómica Funcional/")
list.files()

# Con ayuda de la librería Biostrings pude leer el archivo FASTA de RNA
library(Biostrings)
traducir<-readRNAStringSet("first.fasta")
traducir

# La función translate me permitió pasar la secuencia a aminoácidos
uno <- translate(traducir)

# Parte 2
# Escoge dos problemas de la plataforma Rosalind de entre los siguientes:
# Counting DNA Nucleotides, Complementing a Strand of DNA, Computing GC Content, 
# Calculating Protein Mass. Escribe un programa que resuelva los dos problemas que
# seleccionaste, en ambos, casos, debes buscar una solución sin usar librerías
# especializadas y otra con librerías especializadas.

##### Complementing a Strand of DNA ######
# Problem
#### Sample Output #####
ACCGGGTTTT

# Con librería especializada
library(Biostrings)

# Aquí simplemente creamos la secunecia y aplicamos la función
# del reverso complemento
nucleotido <- DNAString("AAAACCCGGT")
revcomplemento <- reverseComplement(nucleotido)
revcomplemento

# Aquí creamos un vector con las respectivas letras
# Sin librería especializada ##############
lettero <- c("A","A","A","A","C","C","C","G","G","T")
secuencia <- as.vector(lettero)

# Por medio de la función replace podemos sustituir un conjunto de valores
# de una lista de un objeto
sus <- replace(lettero, c(1:10), c("A","C","C","G","G","G","T","T","T","T"))
sus

# Ejercicio 2
##### Counting DNA Nucleotides ####
# Sample Output
# 20 12 17 21


# Con librería especializada ##############
number <- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

# La función alphabetFrequency saca la frecuencia de cada nucleótido y baseOnly me arroja 
# específicamente los nucleótidos principales de la nomenclatura
alphabetFrequency(number, baseOnly=TRUE)


# Sin librería especializada ##############
letras <- c("A","G","C","T","T","T","T","C","A","T","T","C","T","G","A","C","T","G","C","A","A","C","G",
            "G","G","C","A","A","T","A","T","G","T","C","T","C","T","G","T","G","T","G","G","A","T","T",
            "A", "A","A","A","A","A","A","G","A","G","T","G","T","C","T","G","A","T","A","G","C","A","G","C")

length(letras)

# Aquí únicamente con la función table de base me permite obtener la frecuecia de cada letr
table(letras)

