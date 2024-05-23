package types;

public class StringType {
    public String name;
    public int length;
    public String content;

    @Override
    public String toString() {
        return "StringType{" +
                "name='" + name + '\'' +
                ", length=" + length +
                ", content='" + content + '\'' +
                '}';
    }

    public StringType(String name, int length, String content) {
        this.name = name;
        this.length = length;
        this.content = content;
    }
}
