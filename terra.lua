----YEETED----
local client_set_event_callback = client.set_event_callback
local ui_new_hotkey = ui.new_hotkey
local ui_set = ui.set
local ui_get = ui.get
local ui_set_visible = ui.set_visible
local ui_reference = ui.reference
----New Shit----
local toggle = ui.new_hotkey("Visuals", "Colored Models", "ESP Toggle")
----REFERENCES TABLE----
local dormant = ui.reference("Visuals", "Player ESP", "Dormant")
local name = ui.reference("Visuals", "Player ESP", "Name")
local flags = ui.reference("Visuals", "Player ESP", "Flags")
local weapon_icon = ui.reference("Visuals", "Player ESP", "Weapon icon")
local out_of_fov_arrow = ui.reference("Visuals", "Player ESP", "Out of FOV arrow")
local player = ui.reference("Visuals", "Colored Models", "Player")

client.set_event_callback("run_command", function(c)
  if ui.get(toggle) == true then
    ui.set(dormant, false)
    ui.set(name, false)
    ui.set(flags, false)
    ui.set(weapon_icon, false)
    ui.set(out_of_fov_arrow, false)
    ui.set(player, true)
  end
  if ui.get(toggle) == false then
    ui.set(dormant, true)
    ui.set(name, true)
    ui.set(flags, true)
    ui.set(weapon_icon, true)
    ui.set(out_of_fov_arrow, true)
    ui.set(player, true)
  end
end)
