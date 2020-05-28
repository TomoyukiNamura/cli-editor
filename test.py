import re

a = '"hello",world,"M,y",name,"is,","Tom"'

# ""でくくられている文字検索
double_quote_str_list = re.findall(r'\,\"(.+?)\"\,', a)

# double_quote_str中のカンマを全角に変換
for double_quote_str in double_quote_str_list:
    print(double_quote_str)
    modified_str = double_quote_str.replace(",", "，")
    a = a.replace(double_quote_str, modified_str)

# ""削除
a = a.replace('"', '')
