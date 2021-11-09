/* BEGIN */
import 'dart:io';





// class
class Country
{
	String? name;
	String? code;

	void display()
	{
		print("Country name: $name");
		print("Country code: $code");
	}
}

class Person
{
	String?  name;
	int?     age;
	Country? cntr;


	// constructors
	Person([String? name, int? age])
	{
		this.name = name;
		this.age  = age;
	}

	Person.short(this.name, this.age);

	Person.shortopt([this.name, this.age]);

	Person.undefined()
	{
		name = "undefined";
		age  = -1;
	}

	Person.fromName(String name)
	{
		this.name = name;
	}

	Person.chain(String  name, int age): this(name, age);
	Person.chain2(String name, int age): this.fromName(name);

	Person.init(String name, int age): name=name, age=age;


	// methods
	void display()
	{
		print("Name: $name");
		print("Age:  $age");
		cntr?.display();
	}
}





// test functions
void test01()
{
	var person = Person();

	person.name = "Ivan";
	person.age  = 24;

	person.display();
}

void test02()
{
	var person = Person();
	person.display();
}

void test03()
{
	var person = Person("Alice", 19);
	person.display();
}

void test04()
{
	Person? person;
	person?.name = "Name";
	person?.age  = 1000;
	person?.display();
	if (person == null)
		print("Person is't defined");
}

void test05()
{
	Person.undefined().display();
	Person.fromName("Smith").display();
}

void test06()
{
	Person.short("Monato", 21).display();
	Person.shortopt("Xerox").display();
}

void test07()
{
	Person.chain("Fedor", 31).display();
	Person.chain2("Ferod", 66).display();
}

void test08()
{
	Person.init("Kristina", 21).display();
}

void test09()
{
	Person()
		..name = "Nikolay"
		..age  = 34
		..display();
}

void test10()
{
	Person()
		..name = "Alexandr"
		..age  = 22
		..cntr = (Country()
			..name = "Russia"
			..code = "RUS"
		)
		..display();
}



// main
void main()
{
	var marks = [
		"test 01", "test 02", "test 03",
		"test 04", "test 05", "test 06",
		"test 07", "test 08", "test 09",
		"test 10",
	];

	var funs  = [
		test01, test02, test03,
		test04, test05, test06,
		test07, test08, test09,
		test10,
	];

	if (marks.length != funs.length)
	{
		stderr.writeln("Error: marks.length != funs.length");
		return;
	}

	for (int i = 0; i < marks.length; ++i)
	{
		print("==== " + marks[i] + " ====");
		funs[i]();
		if (i + 1 < marks.length)
			print("");
	}
}



/* END */
