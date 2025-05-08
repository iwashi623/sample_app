require 'benchmark'

size = 500000

# キーの作成
numeric_keys = (1..size).to_a
string_keys = (1..size).map(&:to_s)
symbol_keys = (1..size).map { |i| "key#{i}".to_sym }

# 変数を事前に宣言
numeric_hash = nil
string_hash = nil
symbol_hash = nil

# ハッシュの作成
puts "=== ハッシュの作成速度 ==="
Benchmark.bm(10) do |x|
  x.report("数値:") { numeric_hash = numeric_keys.each_with_object({}) { |k, h| h[k] = k } }
  x.report("文字列:") { string_hash = string_keys.each_with_object({}) { |k, h| h[k] = k } }
  x.report("シンボル:") { symbol_hash = symbol_keys.each_with_object({}) { |k, h| h[k] = k } }
end


# ハッシュ検索の速度比較
puts "\n-- ハッシュの検索速度 --"
Benchmark.bm(10) do |x|
  x.report("数値:") { numeric_keys.each { |k| numeric_hash[k] } }
  x.report("文字列:") { string_keys.each { |k| string_hash[k] } }
  x.report("シンボル:") { symbol_keys.each { |k| symbol_hash[k] } }
end
