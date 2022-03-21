import ballerina/http;
import ballerina/os;

listener http:Listener serverEP = new(9090);

service http:Service /host on serverEP {
    resource function get getServer() returns string {
        string user = os:getEnv("USER");
        string hostName = os:getEnv("HOSTNAME");
        string rtnString = user + ":" + hostName + "\n";
        return rtnString;
    }
}