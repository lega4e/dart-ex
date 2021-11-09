/* BEGIN */



dynamic max(a, b) => b > a ? b : a;
min(a, b) => b < a ? b : a;
print_sum(a, b) => print(a + b);

void print_sub(a, b) => print(a - b);

void print_person(name, age, [sex])
{
	print("Name: $name");
	print("Age:  $age");
	print(sex != null ? "Sex:  $sex\n" : "");
}

void print_fields({ String name = "undefined", age = "undefined" })
{
	print("Name: $name");
	print("Name: $age");
	print("");
}

void print_bad()  => print("BAD");
void print_good() => print("GOOD");

void print_several_times(String s, int n)
{
	for (int i = 0; i < n; ++i)
		print(s);
}

void main()
{
	hello();
	print("max: ${max(3, 5)}");
	print("max: ${max(3.5, 5.2)}");
	print("min: ${min(3, 5)}");
	print("min: ${min(3.5, 5.2)}");
	print("min: ${min(10, 5.2)}");
	print("min: ${min(4, 5.2)}");
	var val = print_sum(3, 5);
	print("val: $val");
	print("");

	void voidval = print_sub(4, 6); // ошибки не будет, но с этой переменной
	                                // ничего нельзя сделать

	print_person("Ivan", 24);
	print_person("Alice", 19, 'f');

	print_fields(age: 34);
	print_fields(name: "Alice");

	Function f = print_bad;
	f();
	f = print_good;
	f();

	String s = "Hello";
	int n = 5;
	Function knock = () => print_several_times(s, n);
	knock(); // 5 x Hello
	s = "Bring"; n = 1;
	knock(); // 1 x Bring
	print("");
}

void hello() => print("Hello!");



/* END */
