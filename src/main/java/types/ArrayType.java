package types;

public class ArrayType {
    public String name;
    public VarType varType;
    public int arrayAddress;
    public int size;

    public ArrayType(String name, VarType varType, int arrayAddress, int size) {
        this.name = name;
        this.varType = varType;
        this.arrayAddress = arrayAddress;
        this.size = size;
    }
}
