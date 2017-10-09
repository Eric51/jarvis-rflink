#!/usr/bin/env python
# -*- coding: utf-8 -*-


import serial # communication serie
import sys # passage des arguments



class rflink: # la classe reçoit le Qwidget principal ET la classe d

	#variable pour sortir boucle plus heure
	
	

	def __init__(self):
		
		self.serialPort=None
		strPortInit="/dev/"+sys.argv[1]
		strDebitInit=str(57600)
		self.serialPort=serial.Serial(strPortInit, strDebitInit, serial.EIGHTBITS, serial.PARITY_NONE, serial.STOPBITS_ONE, 0.100) 			
		
		

	'''
	Funtions
	'''


	
	
	def active_rflink(self,etat):
		
			etat = etat.replace('/',';') 
			etat2 = etat+"\n\r"
			#print (etat2)
			self.serialPort.write(etat2)
		
			
	
				
				
def main():
	
	test = rflink()
	test.active_rflink(sys.argv[2])
	

if __name__=="__main__": # pour rendre le code exécutable 
	main() # appelle la fonction main

