/* BEGIN */



void main()
{
	String str = "Hello, Dart!";
	print(str);
	str = "Hello, World!";
	print(str);

	var language = "Dart";
	print("Hello, " + language);

	dynamic strnum = "String";
	print(strnum);
	strnum = 42;
	print(strnum);

	const PI   = 3.14; // Должно быть определено на этапе компиляции
	final name = "PI"; // Просто не может изменяться
	print(PI);
	print(name);

	print("$name = $PI, language = $language, strnum = $strnum");
	return;
}



/* END */
