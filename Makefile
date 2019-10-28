main: ocamlcode.o main.c
	cc -o main main.c ocamlcode.o -L`ocamlc -where` -ldl -lm -lasmrun

ocamlcode.o: hello.ml
	ocamlopt -output-obj -o ocamlcode.o hello.ml

clean:
	rm -f main hello.cmi hello.cmo hello.cmx hello.o ocamlcode.o
