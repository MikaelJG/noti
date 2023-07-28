#include <iostream>
#include <array>
#include <unordered_map>
#include <vector>

void append_keywords_hash(
                   std::unordered_map<std::string, std::string>& keywords_map,
                   std::array<std::string, 5>& keyword_a,
                   std::string& path) {

    for (const auto& k : keyword_a) {
        keywords_map[k] = path;
    }
}

int main() {

    std::unordered_map<std::string, std::string> keywords_map;
    
    std::array<std::string, 5> if_array{"if", "else", "elsif", "else if", "elseif"};
    std::string if_path = "./path/to/if.cpp";

    append_keywords_hash(keywords_map, if_array, if_path);

    std::array<std::string, 5> iterate_array{"iteration", "iterate", "iterator", "iterating", "iterators"};
    std::string iterate_path = "./path/to/iterate.cpp";

    append_keywords_hash(keywords_map, iterate_array, iterate_path);

    std::array<std::string, 5> switch_array{"case", "switch statement", "case statement", "switchstatement", "casestatement"};
    std::string switch_path = "./path/to/switch.cpp";

    append_keywords_hash(keywords_map, switch_array, switch_path);

    for ( const auto& k : keywords_map ) {
        std::cout << "Key: " << k.first << " " << "Value: " << k.second << '\n';
    }
    
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

    // std::unordered_map<std::string, std::string> keywords;

    // for (size_t i = 0; i < iterate_array.size(); i++) {

    //     std::string keyword = iterate_array[i];
    //     keywords[keyword] = "path/to/iterate.cpp";

    // }
    
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
