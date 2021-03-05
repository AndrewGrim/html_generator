run:
	mkdir -p build
	dmd src/*.d -od=build -of=main.out && ./main.out