import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

actor Token {

    var owner : Principal = Principal.fromText("rbel2-ukhin-2atah-7ioi2-t63it-r23yn-qt6kk-exrwt-rwvjk-qbkcc-uqe");
    var totalSupply : Nat = 1000000000;
    var symbol : Text = "TOK";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);
    balances.put(owner, totalSupply);

    public query func balanceOf(owner : Principal) : async Nat {
        let balance = switch (balances.get(owner)) {
            case null 0;
            case (?b) b;
        };

        return balance;
    };

};
