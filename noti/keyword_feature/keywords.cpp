#include <iostream>
#include <array>
#include <unordered_map>
#include <vector>

void append_hash(std::unordered_map<std::string, std::string> map,
                 std::array<std::string, 5> ar,
                 std::string path) {

    std::unordered_map keywords_map = map;
    std::array keywords_array = ar;

    for (size_t i = 0; i < keywords_array.size(); i++) {

        std::string key = keywords_array[i];
        keywords_map[key] = "path/to/if.cpp";

    }

        
    }

}

int main() {

    // all of these should open if.cpp
    //                          if, else, elsif, else if
    //
    // all of these should open iterate.cpp
    //                          iterate, iterator, iterating, iterators
    std::array<std::string, 5> if_array{"if", "else", "elsif", "else if", "elseif"};
    std::array<std::string, 5> iterate_array{"iterate", "iterator", "iterating", "iterators"};
    
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
    //
    // csv could be
    //
    // if, else, elseif, else if, elsif, path/to/if.cpp
    //
    // Up to row.length - 1 , unordered_map[row[value]] = row.length.value // last element in row.
    //
    //



    std::unordered_map<std::string, std::string> keywords;



    for (size_t i = 0; i < iterate_array.size(); i++) {

        std::string keyword = iterate_array[i];
        keywords[keyword] = "path/to/iterate.cpp";

    }
    
    for (const auto& k : keywords) {
        std::cout << "Key: " << k.first << ", Path: " << k.second << '\n';
    }
}

// #include <iostream>
// #include <unordered_map>
// #include <string>
// 
// int main() {
//     std::unordered_map<std::string, std::string> keywordToFilePath = {
//         {"else", "path/to/if.cpp"},
//         {"elsif", "path/to/if.cpp"},
//         {"else if", "path/to/if.cpp"},
//         {"if", "path/to/if.cpp"},
//         {"iterate", "path/to/iterate.cpp"},
//         {"iterator", "path/to/iterate.cpp"},
//         {"iterators", "path/to/iterate.cpp"},
//         {"iterating", "path/to/iterate.cpp"}
//     };
// 
//     // Example usage:
//     std::string keyword = "else";
//     if (keywordToFilePath.find(keyword) != keywordToFilePath.end()) {
//         std::string filePath = keywordToFilePath[keyword];
//         std::cout << "Opening: " << filePath << std::endl;
//     } else {
//         std::cout << "Keyword not found!" << std::endl;
//     }
// 
//     return 0;
// }
