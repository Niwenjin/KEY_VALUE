#include <iostream>
#include <fstream>
#include <string>
#include <unordered_map>
#include <readline/readline.h>
#include <readline/history.h>
#include <getopt.h>

// 声明全局的键值对存储
std::unordered_map<std::string, std::string> keyValues;

// 打印帮助信息
void printHelp() {
    std::cout << "Usage: program [options]" << std::endl;
    std::cout << "Options:" << std::endl;
    std::cout << "  -f, --file <filename>   Read key-value pairs from file" << std::endl;
    std::cout << "  -a, --add               Add a key-value pair interactively" << std::endl;
    std::cout << "  -q, --query <key>       Query the value for a key interactively" << std::endl;
    std::cout << "  -h, --help              Show help message" << std::endl;
}

// 从文件中读取键值对
void readKeyValueFromFile(const std::string& filename) {
    std::ifstream file(filename);
    if (!file) {
        std::cerr << "Failed to open file: " << filename << std::endl;
        return;
    }

    std::string line;
    while (std::getline(file, line)) {
        size_t delimiterPos = line.find('=');
        if (delimiterPos != std::string::npos) {
            std::string key = line.substr(0, delimiterPos);
            std::string value = line.substr(delimiterPos + 1);
            keyValues[key] = value;
        }
    }

    file.close();
}

// 交互式添加键值对
void addKeyValueInteractively() {
    std::string key, value;

    char* line = readline("Enter key: ");
    if (line) {
        key = line;
        add_history(line);
        free(line);
    }

    line = readline("Enter value: ");
    if (line) {
        value = line;
        add_history(line);
        free(line);
    }

    keyValues[key] = value;
}

// 交互式查询键值对
void queryKeyValueInteractively() {
    std::string key;

    char* line = readline("Enter key to query: ");
    if (line) {
        key = line;
        add_history(line);
        free(line);
    }

    auto it = keyValues.find(key);
    if (it != keyValues.end()) {
        std::cout << "Value for key '" << key << "': " << it->second << std::endl;
    } else {
        std::cout << "Key not found: " << key << std::endl;
    }
}

int main(int argc, char** argv) {
    // 命令行选项配置
    const char* shortOptions = "f:aq:h";
    const struct option longOptions[] = {
        {"file", required_argument, nullptr, 'f'},
        {"add", no_argument, nullptr, 'a'},
        {"query", required_argument, nullptr, 'q'},
        {"help", no_argument, nullptr, 'h'},
        {nullptr, 0, nullptr, 0}
    };

    // 解析命令行选项
    int option;
    std::string filename;
    bool interactiveAdd = false;
    bool interactiveQuery = false;

    while ((option = getopt_long(argc, argv, shortOptions, longOptions, nullptr)) != -1) {
        switch (option) {
            case 'f':
                filename = optarg;
                break;
            case 'a':
                interactiveAdd = true;
                break;
            case 'q':
                interactiveQuery = true;
                break;
            case 'h':
                printHelp();
                return 0;
            default:
                printHelp();
                return 1;
        }
    }

    // 从文件中读取键值对
    if (!filename.empty()) {
        readKeyValueFromFile(filename);
    }

    // 交互式添加与查询键值对
    if (interactiveAdd || interactiveQuery) {
        // 初始化readline库
        rl_bind_key('\t', rl_insert);

        while (true) {
            char* line = readline("> ");
            if (!line) {
                break;
            }

            std::string command = line;
            free(line);

            if (command == "quit" || command == "exit") {
                break;
            } else if (interactiveAdd && command == "add") {
                addKeyValueInteractively();
            } else if (interactiveQuery && command == "query") {
                queryKeyValueInteractively();
            } else {
                std::cout << "Unknown command" << std::endl;
            }
        }
    }

    return 0;
}
