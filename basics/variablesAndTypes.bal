import ballerina/io;

string greeting = "Hello Mama";

public function main() {
    
    string name = "Ballerina";

    io:println(greeting, "  ", name);
}