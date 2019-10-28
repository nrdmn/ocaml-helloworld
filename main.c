extern void caml_startup (char **argv);

int main(int argc, char **argv)
{
	caml_startup(argv);
	return 0;
}
