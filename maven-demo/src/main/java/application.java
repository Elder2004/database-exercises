import org.apache.commons.lang3.StringUtils;

import java.util.Scanner;


public class application {
    public static void main(String[] args) {

                Scanner input = new Scanner(System.in);
        System.out.println ();
                System.out.print("Enter something: ");
                String line = input.nextLine();

                if (StringUtils.isNumeric(line)) {
                    System.out.println ();
                    System.out.println(line + " is a number");
                } else {
                    System.out.println ();
                    System.out.println(line + " is NOT a number");
                }
        System.out.println ();
                System.out.println("Flipped Case: "  + StringUtils.swapCase(line));
        System.out.println ();
                System.out.println("Reversed: " + StringUtils.reverse(line));
            }


    }

