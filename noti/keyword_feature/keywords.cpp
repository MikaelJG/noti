#include <iostream>
#include <array>
#include <unordered_map>
#include <vector>

int main() {

    std::array<std::string, 4> if_array{"if", "else", "elsif", "else if"};
    std::array<std::string, 4> iterate_array{"iterate", "iterator", "iterating", "interators"};


    std::unordered_map<std::string, std::string> keywords;

    keywords["if"] = "path/to/if.cpp";
    

    for (const auto& k : keywords) {
        std::cout << "Key: " << k.first << ", Path: " << k.second << '\n';
    }
}
