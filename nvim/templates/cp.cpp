// Competitive Programming - B.O.F
// @brayaon20

#include <bits/stdc++.h>

using namespace std;

#define NAME(a) cout << #a << " = ";
#define MOD 1000000007

// Shortcuts for long data types
typedef long long ll;
typedef pair<ll,ll> pll;
typedef pair<int,int> pii;

// Overriding << operator to print special objects
template<typename A, typename B> ostream& operator<<(ostream &os, const pair<A, B> &p) {
    return os << p.first << " " << p.second;
}
template<typename A> ostream& operator<<(ostream &os, const vector<A> &v) {
    NAME(v);
    os << "{"; for (auto e : v) os << " " << e; os << " }";
    return os;
}

void f() {
}

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);

    f();

    return 0;
}
