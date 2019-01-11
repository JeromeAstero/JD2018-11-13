package by.it.mnovikov.calc2;

import java.util.Arrays;

/**
 * Created by user on 27.11.2018.
 */
class Vector extends Var {
    private double[] value;

    Vector(double[] value) {
        this.value = new double[value.length];
        System.arraycopy(value, 0, this.value, 0, this.value.length);
//        for (int i = 0; i < this.value.length; i++) {
//            this.value[i] = value[i];
    }

    Vector(Vector vector) {
        value = new double[vector.value.length];
        System.arraycopy(vector.value, 0, value, 0, value.length);
//      for (int i = 0; i < value.length; i++) {
//      value[i] = vector.value[i];
//      }

    }

    Vector(String strVector) {
        String[] str = strVector
                .replace('{', ' ').replace('}', ' ')
                .trim().split(",\\s*");
        value = new double[str.length];
        for (int i = 0; i < value.length; i++) {
            value[i] = Double.parseDouble(str[i]);
        }
    }

    @Override
    public Var add(Var other) throws CalcException {
        return super.add(other);
    }

    @Override
    public Var sub(Var other) throws CalcException {
        return super.sub(other);
    }

    @Override
    public Var mul(Var other) throws CalcException {
        return super.mul(other);
    }

    @Override
    public Var div(Var other) throws CalcException {
                return super.div(other);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("{");
        String delimiter = "";
        for (double v : value) {
            sb.append(delimiter).append(v);
            delimiter = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
