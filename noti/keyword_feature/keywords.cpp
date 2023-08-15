#include <iostream>
#include <array>
#include <unordered_map>
#include <vector>

int main() {

    std::unordered_map<std::string, std::string> keywords_map{ 
        // section name, path
        
        // conditionals
        {"if", "if.cpp"}, // ./path/to/if.cpp
        {"else", "if.cpp"},
        {"elsif", "if.cpp"},
        {"else if", "if.cpp"},
        {"elseif", "if.cpp"},

        // loop
        {"iteration", "path/to/iterate.cpp"},
        {"iterate",  "path/to/iterate.cpp"},
        {"iterator",  "path/to/iterate.cpp"},
        {"iterating", "path/to/iterate.cpp"},
        {"iterators", "path/to/iterate.cpp"},

        // switch
        {"case", "path/to/switch.cpp"},
        {"switch statement", "path/to/switch.cpp"},
        {"case statement", "path/to/switch.cpp"},
        {"switchstatement", "path/to/switch.cpp"},
        {"casestatement", "path/to/switch.cpp"},

        // variables
        // touples
        // enums
        // array
        // vector
        // insert
        // size
        // push_back
        // static_cast
        // iteration over a container
        // size_t
        // user input
        // range
        // range pipes
        // function
        // inline function
        // member function
        // public
        // overloading
        // parameters
        // pass by value
        // pass by reference
        // const
        // constexpr
        // auto
        // pointer
        // null pointer
        // nullptr
        // class
        // constructor
        // destructor
        // automatic destructor
        // object lifetime
        // automatic
        // thread local
        // static
        // dynamic
        // determinism
        //
    };

//     std::string keyword = "else";
//     if (keywordToFilePath.find(keyword) != keywordToFilePath.end()) {
//         std::string filePath = keywordToFilePath[keyword];
//         std::cout << "Opening: " << filePath << std::endl;
//     } else {
//         std::cout << "Keyword not found!" << std::endl;
//     }
}
