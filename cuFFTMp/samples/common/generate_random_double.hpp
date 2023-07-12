#include <random>
#include <vector>
#include <complex>

void generate_random_double(std::vector<std::complex<double>>& data, int seed) {
    std::mt19937 gen(seed);
    std::uniform_real_distribution<double> dist(-1, 1);
    for(auto& v: data) {
        double r = dist(gen);
        double i = dist(gen);
        v = {r, i};
    }
}

void generate_random_double(std::vector<double>& data, int seed) {
    std::mt19937 gen(seed);
    std::uniform_real_distribution<double> dist(-1, 1);
    for(auto& v: data) {
        v = dist(gen);
    }
}