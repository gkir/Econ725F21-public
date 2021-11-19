library(data.table)
setwd("/Users/gregkirwin/Desktop/phd/second/fall/econ 725 machine learning/fall20/discussion 12")
shroom <- fread("agaricus-lepiota.csv", header = F)

names(shroom) <- c("edible","capshape", "capsurface","capcolor","bruises","odor",
                   "gillattach","gillspace","gillsize","gillcolor",
                   "stalkshape","stalkroot","stalksurfabove",'stalksurfbelow',
                   'stalkcolorabove','stalkcolorbelow',"veiltype","veilcolor",
                   "ringnumber","ringtype","sporeprintcol","pop","habitat")

library(plyr)
shroom$edible <- revalue(shroom$edible, c("e"="edible", "p"="poisonous"))
shroom$capshape <- revalue(shroom$capshape, c("b" = "bell", "c" = "conical",
                                              "x" = "convex","f" = "flat",
                                              "k"="knobbed","s" = "sunken"))
shroom$capsurface <- revalue(shroom$capsurface, c("f" = "fibrous","g" = "grooves",
                                                  "y" = "scaly", "s" = "smooth"))
shroom$capcolor <- revalue(shroom$capcolor, c("n" = "brown","b" = "buff", 
                                              "c" = "cinnamon","g" ="gray","r"= "green",
                                              "p"= "pink","u"= "purple","e"= "red",
                                              "w"= "white","y"= "yellow"))
shroom$bruises <- revalue(shroom$bruises, c( "t" = "bruises", "f" = "no"))
shroom$odor <- revalue(shroom$odor, c("a" = "almond","l" = "anise","c"= "creosote",
                                      "y" = "fishy","f" = "foul", "m" = "musty",
                                      'n' = "none","p" = "pungent","s"= "spicy"))
shroom$gillattach <- revalue(shroom$gillattach, c("a" = "attached", "d" = "descending",
                                                  "f" = "free","n" = "notched"))
shroom$gillspace <- revalue(shroom$gillspace, c("c" = "close","w" = "crowded",
                                                "d" = "distant"))
shroom$gillsize <- revalue(shroom$gillsize, c("b" = "broad", "n" = "narrow"))
shroom$gillcolor <- revalue(shroom$gillcolor, c("k"= "black","n"= "brown","b"= "buff",
                                                "h"= "chocolate","g"= "gray",
                                                "r"= "green","o"= "orange","p"= "pink",
                                                "u"= "purple","e"= "red","w"="white",
                                                "y"="yellow"))
shroom$stalkshape <- revalue(shroom$stalkshape, c("e" = "enlarging", "t" = "tapering"))
shroom$stalkroot <- revalue(shroom$stalkroot, c("b"="bulbous","c"="club","u"="cup",
                                                "e"="equal","z"="rhizomorphs",
                                                "r"="rooted","?"="missing"))
shroom$stalksurfabove <- revalue(shroom$stalksurfabove, c("f"="fibrous","y"="scaly",
                                                          "k"="silky","s"="smooth"))
shroom$stalksurfbelow <- revalue(shroom$stalksurfbelow, c("f"="fibrous","y"="scaly",
                                                          "k"="silky","s"="smooth"))
shroom$stalkcolorabove <- revalue(shroom$stalkcolorabove, c("n"="brown","b"="buff",
                                                            "c"="cinnamon","g"="gray",
                                                            "o"="orange","p"="pink",
                                                            "e"="red","w"="white",
                                                            "y"="yellow"))
shroom$stalkcolorbelow <- revalue(shroom$stalkcolorbelow, c("n"="brown","b"="buff",
                                                            "c"="cinnamon","g"="gray",
                                                            "o"="orange","p"="pink",
                                                            "e"="red","w"="white",
                                                            "y"="yellow"))
shroom$veiltype <- revalue(shroom$veiltype, c("p"="partial","u"="universal"))
shroom$veilcolor <- revalue(shroom$veilcolor, c("n"="brown","o"="orange","w"="white",
                                                "y"="yellow"))
shroom$ringnumber <- revalue(shroom$ringnumber, c("n"="none","o"="one","t"="two"))
shroom$ringtype <- revalue(shroom$ringtype, c("c"="cobwebby","e"="evanescent","f"="flaring",
                                              "l"="large","n"="none","p"="pendant",
                                              "s"="sheathing","z"="zone"))
shroom$sporeprintcol <- revalue(shroom$sporeprintcol, c("k"="black","n"="brown","b"="buff",
                                                        "h"="chocolate","r"="green",
                                                        "o"="orange","u"="purple",
                                                        "w"="white","y"="yellow"))
shroom$pop <- revalue(shroom$pop, c("a"="abundant","c"="clustered","n"="numerous",
                                    "s"="scattered","v"="several","y"="solitary"))
shroom$habitat <- revalue(shroom$habitat, c("g"="grasses","l"="leaves","m"="meadows","p"="paths",
                                            "u"="urban","w"="waste","d"="woods"))


write.csv(shroom, file = "mushrooms.csv", row.names = F)






