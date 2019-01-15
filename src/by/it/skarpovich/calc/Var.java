package by.it.skarpovich.calc;

import by.it.skarpovich.calc.res.Messages;

import java.io.*;
import java.util.HashMap;
import java.util.Map;


abstract class Var implements Operation {
    //ResMan resMan2 = ResMan.INSTANCE;

    static Map<String, Var> vars = new HashMap<>();
    private static String filename = Util.getPath("vars.txt");

    @Override
    public Var add(Var other) throws CalcException {
        throw new CalcException(ResMan.INSTANCE.get(Messages.STR_OPERATION) + " " + this + "+" + other + " " + ResMan.INSTANCE.get(Messages.STR_IMPOSSIBLE));
    }

    @Override
    public Var sub(Var other) throws CalcException {
        throw new CalcException(ResMan.INSTANCE.get(Messages.STR_OPERATION) + " " + this + "-" + other + " " + ResMan.INSTANCE.get(Messages.STR_IMPOSSIBLE));
    }

    @Override
    public Var mul(Var other) throws CalcException {
        throw new CalcException(ResMan.INSTANCE.get(Messages.STR_OPERATION) + " " + this + "*" + other + " " + ResMan.INSTANCE.get(Messages.STR_IMPOSSIBLE));
    }

    @Override
    public Var div(Var other) throws CalcException {
        throw new CalcException(ResMan.INSTANCE.get(Messages.STR_OPERATION) + " " +  this + "/" + other + " " + ResMan.INSTANCE.get(Messages.STR_IMPOSSIBLE));
    }

    @Override
    public String toString() {
        return "this Var";
    }

    static void setVar(String key, Var value) {
        vars.put(key, value);
    }

//    static Var createVar(String operand) throws CalcException {
//        if (operand.matches(Patterns.SCALAR))
//            return new Scalar(operand);
//        if (operand.matches(Patterns.VECTOR))
//            return new Vector(operand);
//        if (operand.matches(Patterns.MATRIX))
//            return new Matrix(operand);
//        Var var = vars.get(operand);
//        if (var == null)
//            throw new CalcException(ResMan.INSTANCE.get(Messages.STR_UNKNOWNVAR) +" "+ operand);
//        return var;
//    }

    static void save() {

        try (PrintWriter out
                     = new PrintWriter(new FileWriter(filename))) {
            for (Map.Entry<String, Var> pair : vars.entrySet()) {
                out.printf("%s=%s\n", pair.getKey(), pair.getValue());
            }
        } catch (IOException e) {
            System.err.print(ResMan.INSTANCE.get(Messages.STR_DISKERROR));
        }
    }

    public static void read() {
        File file = new File(filename);
        if (file.exists())
            try (
                    BufferedReader in = new BufferedReader(
                            new FileReader(file))
            ) {
                Parser local = new Parser();
                while (in.ready()) {
                    local.calc(in.readLine());
                }
            } catch (IOException | CalcException e) {
                e.printStackTrace();
            }
    }
}
