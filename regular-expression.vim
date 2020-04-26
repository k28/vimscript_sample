
" 文字列に特定のパターンが含まれるか調べる
function! s:look_for_specific_pattern
  let sample_line = "All work and no play makes Jack a dull boy."
  if sample_line =~ "play"
    echo "Found!"
  end
endfunction

" 特定のパターンを抜き出す
function! s:retrieving_specific_pattern
  let sample_word = '$include="hoge.md"'
  let pattern = '\v\$include\="([^"]+)"'
  let sub_match_list = matchlist(sample_word, pattern)
  " matchlist
  " 0 : マッチした文字列
  " 1 以降 キャプチャした文字列が順に入る
  echo sub_match_list[1]
endfunction

" 特定のパターンを置き換える
function! s:substitute_sample
  let sample_line = 'The quick brown fox jumps over the lazy dog'
  let changed = substitute(sample_line, 'brown', 'yellow', "")
  echo changed
endfunction


" vim:set ft=vim ts=2 sw=2 sts=2:
