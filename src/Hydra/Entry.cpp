// Copyright © 2017-2020 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#include "Entry.h"

#include "../Bitcoin/Address.h"
#include "Signer.h"

using namespace TW::Hydra;
using namespace std;

bool Entry::validateAddress(TWCoinType coin, const string& address, TW::byte p2pkh, TW::byte p2sh, const char* hrp) const {
    return Bitcoin::Address::isValid(address);
}

string Entry::deriveAddress(TWCoinType coin, const PublicKey& publicKey, TW::byte p2pkh, const char* hrp) const {
    return Bitcoin::Address(publicKey, p2pkh).string();
}

void Entry::sign(TWCoinType coin, const TW::Data& dataIn, TW::Data& dataOut) const {
    signTemplate<Signer, Hydra::Proto::SigningInput>(dataIn, dataOut);
}

void Entry::plan(TWCoinType coin, const TW::Data& dataIn, TW::Data& dataOut) const {
    planTemplate<Signer, Hydra::Proto::SigningInput>(dataIn, dataOut);
}
