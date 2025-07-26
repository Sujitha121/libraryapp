import java.util.ArrayList;
import java.util.Scanner;
class Book {
    String title;
    String author;
    Book(String t, String a) {
        title = t;
	author = a;
    }
    void display() {
        System.out.println("📘 " + title + " by " + author);
	}
}

public class LibraryManager {
	public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Book> library = new ArrayList<>()
int choice;

        do {
		System.out.println("\n1. Add Book\n2. View Books\n3. Exit");
            System.out.print("Choice: ");
	    choice = sc.nextInt();
            sc.nextLine();
	    switch (choice) {
                case 1:
			System.out.print("Enter book title: ");
                    String title = sc.nextLine();
                    System.out.print("Enter author: ");
		     String author = sc.nextLine();
                    library.add(new Book(title, author));
                    System.out.println("Book added.");
		    break;
                case 2:
                    System.out.println("\n📚 Your Library:");
                    for (Book b : library) b.display();
		    break;
                case 3:
                    System.out.println("Exiting...");
                    break;
		    default:
                    System.out.println("Invalid choice.");
            }
}

        } while (choice != 3);
