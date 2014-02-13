#!/usr/bin/ruby -w
# 


arrayProductos = Array.new
arrayClientes = Array.new
numeros = 0

while numeros<100
        numeros+=1
        arrayProductos.push(numeros)
end

t1 = Thread.new do
        while (1) do
                arrayClientes.push('Cliente')
                arrayProductos.shift

                sleep(1)

                puts 'El cliente ha cogido 1 producto y quedan' + arrayProductos.length.to_i
        end
end


#t2 = thread.new do




t1.join
