#!/usr/bin/ruby
# Ejemplo: ruby scanner.rb <target> > scan.txt |  grep "open" scan.txt
require 'socket'
require 'thread'
require 'timeout'
#Author: aKa slowkep

host = ARGV[0] #Le proprocionamos un argumento.

def scan(host) #Definimos
  (1..1000).each do |port| #Podemos modificar el rango de puertos, y especificamos para que cada puerto haga..:
    Thread.new {
      begin
        Timeout.timeout(0.001) do                    # tiempo de timeout
          s = TCPSocket.new(host, port)            # Crear nuevo socket despues del timeout
          puts "[+] #{host} | Port #{port} open"
          s.close                                  #Cerramos variable
        end
      rescue Errno::ECONNREFUSED    #En caso de puerto cerrado
        # puts "[!] #{host} | Port #{port} closed"
        next
      rescue Timeout::Error # En caso de que el puerto no de respuesta /filtered
        puts "[!] #{host} | Port #{port} timeout/filtered"
        next
      end
    }.join
  end
end

scan host
