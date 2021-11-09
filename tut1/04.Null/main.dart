/* BEGIN */



void main()
{
	// String name; // Ошибка, т.к. null значение используется до присваивания
	String? name;   // Окей, мы явно указали, что name может быть нулевым
	print(name);    // null
	name = "Name";
	print(name);

	int? n1 = null;
	int n2 = n1 ?? 0; // Проверить, что не нулевое, иначе вернуть 0
	print("n1: $n1, n2: $n2");

	int? m1 = 23;
	int m2 = m1!; // Мы точно уверены, что в m1 не будет нуля
	print("m1: $m1, m2: $m2");
}



/* END */
