#########################################################################
# Plantilla basica para hacer scripts de simulacion
#########################################################################
# Reinicio de la simulacion y el instante de simulacion vuelve a 0ns
restart

# Aplicacion de estimulos basicos
# definimos CLK como un reloj con periodo de 10ns (100MHz). Valor inicial 0
add_force {clk} -radix bin {1 0ns} {0 5ns} -repeat_every 10ns

# definimos RESET_NEGADO
add_force {reset_externo} -radix bin {0 0ns} {1 40ns}
add_force {t_valid_in} -radix bin {0 0ns}

# avanzamos simulación 100ns
run 100ns

# 1. Hacemos una secuencia de momento cada N nanosegundos y ponemos t_valid_in a '1' y t_ready_slave a '1' también

add_force {t_valid_in} -radix bin {1 0ns} {0 10ns} {1 500ns} {0 510ns} {1 1000ns} {0 1010ns} {1 1500ns} {0 1510ns} {1 2000ns} {0 2010ns} {1 2200ns} {0 2210ns} -repeat_every 2560ns -cancel_after 10240ns

add_force {t_ready_slave} -radix bin {0 0ns} {1 2480ns} {0 2530ns} -repeat_every 2560ns -cancel_after 10240ns

#add_force {momento} -radix dec {100 0ns} {2000 500ns} {20008 1000ns} {36780 1500ns} {18700 2000ns} {1000 2200ns} -repeat_every 2560ns -cancel_after 10240ns
add_force {momento} -radix dec {3145728 0ns} {1076887552 500ns} {544210944 1000ns} {2152726528 1500ns} {4194304 2000ns} {284164096 2200ns} -repeat_every 2560ns -cancel_after 10240ns

# Hacemos 2 veces la linea anterior para momento --> es decir, un frame completo
run 10240ns


# 2. Hacemos una secuencia de momento cada N nanosegundos y ponemos t_valid_in a '1' y t_ready_slave a '1' también

add_force {t_valid_in} -radix bin {1 0ns} {0 10ns} {1 500ns} {0 510ns} {1 1000ns} {0 1010ns} {1 1500ns} {0 1510ns} {1 2000ns} {0 2010ns} {1 2200ns} {0 2210ns} -repeat_every 2560ns -cancel_after 10240ns

add_force {t_ready_slave} -radix bin {0 0ns} {1 2480ns} {0 2530ns} -repeat_every 2560ns -cancel_after 10240ns

#add_force {momento} -radix dec {100 0ns} {2000 500ns} {20008 1000ns} {36780 1500ns} {18700 2000ns} {1000 2200ns} -repeat_every 2560ns -cancel_after 10240ns
add_force {momento} -radix dec {3145728 0ns} {1076887552 500ns} {544210944 1000ns} {2152726528 1500ns} {4194304 2000ns} {284164096 2200ns} -repeat_every 2560ns -cancel_after 10240ns

# Hacemos 2 veces la linea anterior para momento --> es decir, un frame completo
run 10240ns
