package UserInterface;

import java.util.List;
import java.util.Scanner;

import Model.*;

public class ConsoleView implements View<Pet> {
    Scanner in;

    public ConsoleView() {
        in = new Scanner(System.in);
//        in = new Scanner(System.in, "ibm866");
    }

    @Override
    public String getName() {
        System.out.print("Имя: ");
        return in.nextLine();
    }

    @Override
    public String getBirthday() {
        System.out.print("Введите дату рождения в формате 'dd.mm.yyyy': ");
        return in.nextLine();
    }

    @Override
    public <T> void printAll(List<T> myList, Class<T> petClass) {
        System.out.print("\033[H\033[J");
        if (myList.isEmpty())
            System.out.println("список пуст");
        else {
            if (petClass == Pet.class)
                System.out.println("\n\t\tНаши питомцы:");
            for (T item : myList) {
                System.out.println(item);
            }
        }
    }

    @Override
    public void showMessage(String message) {
        System.out.println(message);
    }
}
