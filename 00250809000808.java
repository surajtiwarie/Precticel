// Name: Suraj Tiwari
// Roll No: 00250809000808

import java.util.Scanner;

class Student {
    int rollNumber;
    String name;
    int mark;

    // Constructor 1: initializes roll number and name only
    Student(int rollNumber, String name) {
        this.rollNumber = rollNumber;
        this.name = name;
        this.mark = 0;   // default value since mark not provided
    }

    // Constructor 2: initializes roll number, name, and mark
    Student(int rollNumber, String name, int mark) {
        this.rollNumber = rollNumber;
        this.name = name;
        this.mark = mark;
    }

    // Member function to display student details
    void display() {
        System.out.println("Roll Number : " + rollNumber);
        System.out.println("Name        : " + name);
        System.out.println("Mark        : " + mark);
        System.out.println("-----------------------------");
    }
}

class StudentDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Using constructor with roll number and name
        System.out.println("Enter details of Student 1 (Roll Number and Name only):");
        System.out.print("Roll Number: ");
        int roll1 = sc.nextInt();
        sc.nextLine();
        System.out.print("Name: ");
        String name1 = sc.nextLine();

        Student s1 = new Student(roll1, name1);

        // Using constructor with roll number, name, and mark
        System.out.println("\nEnter details of Student 2 (Roll Number, Name, and Mark):");
        System.out.print("Roll Number: ");
        int roll2 = sc.nextInt();
        sc.nextLine();
        System.out.print("Name: ");
        String name2 = sc.nextLine();
        System.out.print("Mark: ");
        int mark2 = sc.nextInt();

        Student s2 = new Student(roll2, name2, mark2);

        System.out.println("\n--- Student Details ---");
        s1.display();
        s2.display();

        sc.close();
    }
}
