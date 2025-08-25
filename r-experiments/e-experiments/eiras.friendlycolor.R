# Credits to Jose Silveira, responsible for this implementation
friendlycolor <- function(idxs)
{
  fcor <- c()

  # 1
  fcor <- c(fcor,"#882E72") # dark violet
  # 2
  fcor <- c(fcor,"#994F88") # violet 5
  # 3
  fcor <- c(fcor,"#AA6F9E") # violet 4
  # 4
  fcor <- c(fcor,"#BA8DB4") # violet 3
  # 5
  fcor <- c(fcor,"#CAACCB") # violet 2
  # 6
  fcor <- c(fcor,"#D9CCE3") # light violet
  # 7
  fcor <- c(fcor,"#0d5092") # navy blue
  # 8
  fcor <- c(fcor,"#1965B0") # cobalt blue
  # 9
  fcor <- c(fcor,"#437DBF") # blue 2
  # 10
  fcor <- c(fcor,"#6195CF") # blue 3
  # 11
  fcor <- c(fcor,"#7BAFDE") # sky blue
  # 12
  fcor <- c(fcor,"#a0d8d8") # light blue
  # 13
  fcor <- c(fcor,"#507052") # moss green
  # 14
  fcor <- c(fcor,"#26a169") # medium green
  # 15
  fcor <- c(fcor,"#4EB265") # leaf green
  # 16
  fcor <- c(fcor,"#90C987") # light green 1
  # 17
  fcor <- c(fcor,"#a6da9a") # light green 2
  # 18
  fcor <- c(fcor,"#CAE0AB") # light green 3
  # 19
  fcor <- c(fcor,"#ac4d12") # ochre
  # 20
  fcor <- c(fcor,"#E65518") # dark orange
  # 21
  fcor <- c(fcor,"#EE8026") # orange 3
  # 22
  fcor <- c(fcor,"#F4A736") # orange 2
  # 23
  fcor <- c(fcor,"#F7CB45") # light orange
  # 24
  fcor <- c(fcor,"#F7F056") # yellow
  # 25
  fcor <- c(fcor,"#42150A") # dark brown
  # 26
  fcor <- c(fcor,"#72190E") # medium brown
  # 27
  fcor <- c(fcor,"#A5170E") # light brown
  # 28
  fcor <- c(fcor,"#a30b1b") # burgundy
  # 29
  fcor <- c(fcor,"#a3261b") # earth
  # 30
  fcor <- c(fcor,"#f43328") # brick
  # 31
  fcor <- c(fcor,"#000000") # black
  # 32
  fcor <- c(fcor,"#111111") # gray 1
  # 33
  fcor <- c(fcor,"#222222") # gray 2
  # 34
  fcor <- c(fcor,"#333333") # gray 3
  # 35
  fcor <- c(fcor,"#444444") # gray 4
  # 36
  fcor <- c(fcor,"#555555") # gray 5
  # 37
  fcor <- c(fcor,"#666666") # gray 6
  # 38
  fcor <- c(fcor,"#777777") # gray 7
  # 39
  fcor <- c(fcor,"#888888") # gray 8
  # 40
  fcor <- c(fcor,"#999999") # gray 9
  # 41
  fcor <- c(fcor,"#aaaaaa") # gray 10
  # 42
  fcor <- c(fcor,"#bbbbbb") # gray 11
  # 43
  fcor <- c(fcor,"#cccccc") # gray 12
  # 44
  fcor <- c(fcor,"#dddddd") # gray 13
  # 45
  fcor <- c(fcor,"#eeeeee") # gray 14
  # 46
  fcor <- c(fcor,"#ffffff") # white

  retorno <- c()
  for (idx in 1:length(idxs))
  {
    retorno <- c(retorno, fcor[idxs[idx]])
  }
  
  return (retorno)
}