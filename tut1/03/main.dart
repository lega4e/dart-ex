/* BEGIN */



// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ТИПЫ ДАННЫХ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
void main()
{
	bool flag = true;
	int x     = 1337; // Не больше 64 бит; зависит от платформы
	double d  = 2.7;  // 64 бита
	String s  = "String";
	String multiline = """
First,
Second,
Third""";
	String info = "$flag, $x, $d, $s";

	String rus = "Русский текст!";

	// Символы в юникоде
	var runes = Runes('\u041F\u0440\u0438\u0432\u0435\u0442!');

	print(info);
	print(multiline);
	print(rus);
	print(String.fromCharCodes(runes));

	Symbol name = #flag;
	print(name);
}



/* END */
