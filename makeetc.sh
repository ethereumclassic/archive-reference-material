#!/bin/bash

replaceForks() {
    echo "Translate all known forks to ETC style forks..."
    sleep 2

    sources=`find ./src | grep ".json\|.yml"`
    for eachfile in $sources
    do

    if [[ "$eachfile" == *".yml"* ]]; then
        sed -i -e 's/- Byzantium/- ETC_Atlantis/g' $eachfile
        sed -i -e 's/\x27Byzantium/\x27ETC_Atlantis/g' $eachfile
        sed -i -e 's/ Byzantium:/ ETC_Atlantis:/g' $eachfile

        sed -i -e 's/- Istanbul/- ETC_Phoenix/g' $eachfile
        sed -i -e 's/\x27Istanbul/\x27ETC_Phoenix/g' $eachfile
        sed -i -e 's/ Istanbul:/ ETC_Phoenix:/g' $eachfile

        sed -i -e 's/- ConstantinopleFix/- ETC_Agharta/g' $eachfile
        sed -i -e 's/\x27ConstantinopleFix/\x27ETC_Agharta/g' $eachfile
        sed -i -e 's/ ConstantinopleFix:/ ETC_Agharta:/g' $eachfile

        sed -i -e 's/- Constantinople/- ETC_Agharta/g' $eachfile
        sed -i -e 's/\x27Constantinople/\x27ETC_Agharta/g' $eachfile
        sed -i -e 's/ Constantinople:/ ETC_Agharta:/g' $eachfile

        sed -i -e 's/- Berlin/- ETC_Magneto/g' $eachfile
        sed -i -e 's/\x27Berlin/\x27ETC_Magneto/g' $eachfile
        sed -i -e 's/ Berlin:/ ETC_Magneto:/g' $eachfile

        sed -i -e 's/- London/- ETC_Mystique/g' $eachfile
        sed -i -e 's/\x27London/\x27ETC_Mystique/g' $eachfile
        sed -i -e 's/ London:/ ETC_Mystique:/g' $eachfile


        sed -i -e 's/- Merge/- ETC_Mystique/g' $eachfile
        sed -i -e 's/\x27Merge/\x27ETC_Mystique/g' $eachfile
        sed -i -e 's/ Merge:/ ETC_Mystique:/g' $eachfile
   fi

        sed -i -e 's/\"Byzantium/\"ETC_Atlantis/g' $eachfile
        sed -i -e 's/=Byzantium/=ETC_Atlantis/g' $eachfile
        sed -i -e 's/>Byzantium/>ETC_Atlantis/g' $eachfile
        sed -i -e 's/<Byzantium/<ETC_Atlantis/g' $eachfile

        sed -i -e 's/\"Istanbul/\"ETC_Phoenix/g' $eachfile
        sed -i -e 's/=Istanbul/=ETC_Phoenix/g' $eachfile
        sed -i -e 's/>Istanbul/>ETC_Phoenix/g' $eachfile
        sed -i -e 's/<Istanbul/<ETC_Phoenix/g' $eachfile

        sed -i -e 's/\"ConstantinopleFix/\"ETC_Agharta/g' $eachfile
        sed -i -e 's/=ConstantinopleFix/=ETC_Agharta/g' $eachfile
        sed -i -e 's/>ConstantinopleFix/>ETC_Agharta/g' $eachfile
        sed -i -e 's/<ConstantinopleFix/<ETC_Agharta/g' $eachfile

        sed -i -e 's/\"Constantinople/\"ETC_Agharta/g' $eachfile
        sed -i -e 's/=Constantinople/=ETC_Agharta/g' $eachfile
        sed -i -e 's/>Constantinople/>ETC_Agharta/g' $eachfile
        sed -i -e 's/<Constantinople/<ETC_Agharta/g' $eachfile

        sed -i -e 's/\"Berlin/\"ETC_Magneto/g' $eachfile
        sed -i -e 's/=Berlin/=ETC_Magneto/g' $eachfile
        sed -i -e 's/>Berlin/>ETC_Magneto/g' $eachfile
        sed -i -e 's/<Berlin/<ETC_Magneto/g' $eachfile

        sed -i -e 's/\"London/\"ETC_Mystique/g' $eachfile
        sed -i -e 's/=London/=ETC_Mystique/g' $eachfile
        sed -i -e 's/>London/>ETC_Mystique/g' $eachfile
        sed -i -e 's/<London/<ETC_Mystique/g' $eachfile

        sed -i -e 's/\"Merge/\"ETC_Mystique/g' $eachfile
        sed -i -e 's/=Merge/=ETC_Mystique/g' $eachfile
        sed -i -e 's/>Merge/>ETC_Mystique/g' $eachfile
        sed -i -e 's/<Merge/<ETC_Mystique/g' $eachfile
        #echo "Processed "$eachfile"..."
    done
}

replaceForks

replaceFillerFiles() {
    echo "Replace known tests to ETC version..."
    sleep 2

    stRefundTest_patch_files=(
        "GeneralStateTestsFiller/stRefundTest/refund50_1Filler.json"
        "GeneralStateTestsFiller/stRefundTest/refund50_2Filler.json"
        "GeneralStateTestsFiller/stRefundTest/refund50percentCapFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund600Filler.json"
        "GeneralStateTestsFiller/stRefundTest/refund_CallAFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_CallA_OOGFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_CallA_notEnoughGasInCallFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_NoOOG_1Filler.json"
        "GeneralStateTestsFiller/stRefundTest/refund_OOGFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_TxToSuicideFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_TxToSuicideOOGFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_changeNonZeroStorageFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_getEtherBackFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_multimpleSuicideFiller.json"
        "GeneralStateTestsFiller/stRefundTest/refund_singleSuicideFiller.json"
    )

    replace() {
       cp -r  "./src-etc/${1}" "./src/${1}"
       echo "./src-etc/${1} ./src/${1}"
    }

    echo "Patch stRefundTest (${#stRefundTest_patch_files} files)"

    for target_file in "${stRefundTest_patch_files[@]}"
    do
      replace "${target_file}"
    done
}

replaceFillerFiles



#info: (stBadOpcode/undefinedOpcodeFirstByte, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0)
#info: (stBadOpcode/invalidDiffPlaces, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label normal :abi f(uint) 0x00..`)
#info: (stBadOpcode/badOpcodes, fork: ETC_Mystique, TrInfo: d: 23, g: 0, v: 0, TrData: ` :raw 0x6001600160016..`)

#info: (stChainId/chainId, fork: ETC_Magneto, TrInfo: d: 0, g: 0, v: 0, TrData: ` 0x..`)
#info: (stEIP2930/coinbaseT2, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label T2baseInList :abi f(uint) 0..`)
#info: (stSelfBalance/diffPlaces, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label normal :abi f(uint) 0x00..`)
#info: (stSStoreTest/sstoreGas, fork: ETC_Agharta, TrInfo: d: 0, g: 0, v: 0, TrData: ` 0x..`)


#info: (stExample/accessListExample, fork: EIP150, TrInfo: d: 0, g: 0, v: 0, TrData: `:label declaredKeyWrite :raw 0x00..`)
#info: (stExample/basefeeExample, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label declaredKeyWrite :raw 0x00..`)
#info: (stExample/eip1559, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: ` :raw 0x00..`)
#info: (stExample/mergeTest, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: ` :raw 0x00..`)

#info: (stEIP1559/baseFeeDiffPlaces, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label normal :abi f(uint) 0x00..`)
#info: (stEIP1559/gasPriceDiffPlaces, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label normal :abi f(uint) 0x00..`)
#info: (stEIP1559/intrinsic, fork: ETC_Mystique, TrInfo: d: 1, g: 0, v: 0, TrData: `:label min23400 :raw 0x..`)
#info: (stEIP1559/lowFeeCap, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label declaredKeyWrite :raw 0x00..`)
#info: (stEIP1559/lowGasLimit, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: ` :raw 0x00..`)
#info: (stEIP1559/lowGasPriceOldTypes, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: ` :raw 0x00..`)
#info: (stEIP1559/outOfFunds, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label declaredKeyWrite :raw 0x00..`)
#info: (stEIP1559/senderBalance, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0)
#info: (stEIP1559/tipTooHigh, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label declaredKeyWrite :raw 0x00..`)
#info: (stEIP1559/transactionIntinsicBug, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label declaredKeyWrite :raw 0x00..`)
#info: (stEIP1559/typeTwoBerlin, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: `:label declaredKeyWrite :raw 0x00..`)
#info: (stEIP1559/valCausesOOF, fork: ETC_Mystique, TrInfo: d: 0, g: 0, v: 0, TrData: ` :abi f(uint) 1..`)
