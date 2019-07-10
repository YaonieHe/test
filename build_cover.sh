g++ -g -fprofile-arcs -ftest-coverage -o main json.cpp main.cpp -lgtest -lpthread --std=c++11
./main
lcov -d ./ -t 'main' -o 'main.info' -b . -c

genhtml -o cover_file main.info

firefox cover_file/index.html
