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
