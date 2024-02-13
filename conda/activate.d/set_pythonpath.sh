#!/bin/bash
# 仮想環境起動時にPYTHONPATHを設定する
# PYTHONPATHがあればOLD_PYTHONPATHにコピーし後で戻す

_additional_path="/path/to/your/modules"

# PYTHONPATHがなければそのまま設定
if [ -z "$PYTHONPATH" ]; then
    export PYTHONPATH="$_additional_path"

# PYTHONPATHがあればOLD_PYTHONPATHにコピー
else
    export OLD_PYTHONPATH="$PYTHONPATH"

    # 指定パスが含まれない場合のみ追加する
    if [[ ":$PYTHONPATH:" != *":$_additional_path:"* ]]; then
        export PYTHONPATH="$PYTHONPATH:$_additional_path"
    fi
fi
