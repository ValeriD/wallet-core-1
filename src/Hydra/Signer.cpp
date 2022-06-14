// Copyright © 2017-2020 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#include "Signer.h"
#include "TransactionSigner.h"
#include "../Hash.h"
#include "../HexCoding.h"
#include "../Bitcoin/Transaction.h"
#include "TransactionBuilder.h"

using namespace TW;
using namespace TW::Hydra;

Bitcoin::Proto::TransactionPlan Signer::plan(const Hydra::Proto::SigningInput& input) noexcept {
    auto plan = TransactionSigner::plan(input);
    return plan.proto();
}

Bitcoin::Proto::SigningOutput Signer::sign(const Hydra::Proto::SigningInput& input) noexcept {

    auto result = TransactionSigner::sign(input);
    Bitcoin::Proto::SigningOutput output;

    if (!result) {
        output.set_error(result.error());
    } else {
        const auto& tx = result.payload();
        *output.mutable_transaction() = tx.proto();

        Data encoded;
        tx.encode(encoded);
        output.set_encoded(encoded.data(), encoded.size());

        auto txHash = Hash::sha256d(encoded.data(), encoded.size());
        std::reverse(txHash.begin(), txHash.end());
        output.set_transaction_id(hex(txHash));
    }
    return output;
}
