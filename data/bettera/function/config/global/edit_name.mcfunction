$data modify storage bettera:display_name name set value $(name)
$data modify storage bettera:display_name color set value $(color)
$data modify storage bettera:display_name bold set value "$(bold)"
$data modify storage bettera:display_name italic set value "$(italic)"
$data modify storage bettera:display_name underline set value "$(underline)"
# data modify storage bettera:display_name name set string storage bettera:display_name name 1 -1
function bettera:config/global/edit_name2 with storage bettera:display_name