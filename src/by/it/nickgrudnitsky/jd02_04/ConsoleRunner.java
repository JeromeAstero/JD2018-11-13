package by.it.nickgrudnitsky.jd02_04;

import java.io.IOException;
import java.util.Scanner;

public class ConsoleRunner {
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        String line;

        Parcer parser = new Parcer();
        Printer printer = new Printer();

        Var.read();
        while (!(line = scanner.nextLine()).equals("end")) {
            if (line.equals("printvar")) {
                Var.printVar();
                continue;
            }
            if (line.equals("sortvar")) {
                Var.sortVar();
                continue;
            }
            Var result;
            try {
                result = parser.calc(line);
                printer.print(result);
            } catch (CalcException e) {
                System.out.println(e.getMessage());
            }
        }
        Var.saveTo();
    }
}
