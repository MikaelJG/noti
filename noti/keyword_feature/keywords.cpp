#include <iostream>
#include <array>
#include <unordered_map>
#include <vector>

int main() {

    // all of these should open if.cpp
    //                          if, else, elsif, else if
    //
    // all of these should open iterate.cpp
    //                          iterate, iterator, iterating, iterators
    
    // {
    //      else: if.cpp,
    //      elsif: if.cpp,
    //      else if: if.cpp,
    //      if: if.cpp,
    //
    //      iterate: iterate.cpp,
    //      iterator: iterate.cpp,
    //      iterators: iterate.cpp,
    //      iterating: iterate.cpp,
    // }
    //

    std::array<std::string, 4> if_array{"if", "else", "elsif", "else if"};
    std::array<std::string, 4> iterate_array{"iterate", "iterator", "iterating", "iterators"};


    std::unordered_map<std::string, std::string> keywords;


    for (size_t i = 0; i < if_array.size(); i++) {

        std::string keyword = if_array[i];

        keywords[keyword] = "path/to/if.cpp";

    }

    for (size_t i = 0; i < iterate_array.size(); i++) {

        std::string keyword = iterate_array[i];

        keywords[keyword] = "path/to/iterate.cpp";

    }
    
    for (const auto& k : keywords) {
        std::cout << "Key: " << k.first << ", Path: " << k.second << '\n';
    }
}
