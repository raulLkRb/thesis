#########################################################################
# Plantilla basica para hacer scripts de simulacion
#########################################################################
# Reinicio de la simulacion y el instante de simulacion vuelve a 0ns
restart

# renombra una señal como un alias en VHDL
# add_wave {{/design_1_wrapper/s_aresetn}} -name RST
# add_wave {{/design_1_wrapper/clk}} -name clk_12_5

# Aplicacion de estimulos basicos
# definimos CLK como un reloj con periodo de 10ns (100MHz). Valor inicial 0
add_force {/design_1_wrapper/clk_100} -radix bin {1 0ns} {0 5ns} -repeat_every 10ns

# definimos CLK_12_5 como un reloj con periodo de 10ns (12.5MHz). Valor inicial 0
add_force {/design_1_wrapper/clk} -radix bin {1 0ns} {0 40ns} -repeat_every 80ns

# Entrada MISO del SPI
add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns}

# definimos RESET_NEGADO
add_force {/design_1_wrapper/s_aresetn} -radix bin {0 0ns} {1 40ns}

# avanzamos simulación exactamente la cantidad de tiempo necesaria para poder introducir miso
# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
run 4640100ps

# Entrada MISO del SPI
#while 1 {

## PRIMERA SECUENCIA DE 32 FRAMES
# 1
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 2
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 3
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 4
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 5
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 6
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 7
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 8
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 9
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 10
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 11
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 12
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 13
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 14
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 15
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 16
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 17
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 18
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 19
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 20
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 21
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 22
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 23
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 24
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 25
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 26
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 27
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 28
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 29
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 30
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 31
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 32
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns



## SEGUNDA SECUENCIA DE 32 FRAMES
# 33
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 34
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 35
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 36
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 37
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 38
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 39
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 40
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 41
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 42
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 43
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 44
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 45
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 46
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 47
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 48
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 49
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 50
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 51
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 52
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 53
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 54
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 55
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 56
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 57
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 58
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 59
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 60
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 61
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 62
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 63
	add_force {/design_1_wrapper/dedo_miso} -radix bin {1 0ns} {0 1280ns} {1 1360ns} {0 1440ns} {1 1520ns} {0 1600ns} {1 1680ns} {0 1840ns} {1 2080ns} {0 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns

# 64
	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} {1 1280ns} {0 1360ns} {1 1440ns} {0 1520ns} {1 1600ns} {0 1680ns} {1 1840ns} {0 2080ns} {1 2480ns} -repeat_every 2560ns -cancel_after 327680ns	

	# 16*8 veces la linea anterior para miso --> es decir, un frame completo
	run 327680ns	

	add_force {/design_1_wrapper/dedo_miso} -radix bin {0 0ns} -cancel_after 4720ns

	# estamos justo empezando el estado "st5_store_tactels" y la señal de chip select "SS" se ha bajado ya a 0
	run 4720ns
#}