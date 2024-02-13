#!/bin/bash
# 仮想環境終了時に環境変数を戻す
# OLD_PYTHONPATHがあればPYTHONPATHを戻す
# なければ削除

if [ -n "$OLD_PYTHONPATH" ]; then
    export PYTHONPATH="$OLD_PYTHONPATH"
    unset OLD_PYTHONPATH
else
    unset PYTHONPATH
fi
