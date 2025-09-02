#Requires AutoHotkey v2.0
; QuickCopy: Ctrl+Shift+Space shows menu; select item to copy.

; --- your items ---
items := Map(
    "GitHub",   "https://github.com/tathagatoroy",
    "LinkedIn", "https://www.linkedin.com/in/tathagato-roy-57960a157/",
    "Phone",    "8335897315",
    "Address",  "E-205, Durga Petals, Circle, No. 3493, Outer Ring Rd, near Bagmane Constellation Business Park, next to Rainbow Children's Hospital, Ferns City, Doddanekundi, Doddanekkundi, Bengaluru, Karnataka 560037"
)

; Build the menu
quickMenu := Menu()
for label, val in items {
    ; Create a proper closure by wrapping in a function
    quickMenu.Add(label, ((text) => (*) => Copy(text))(val))
}

; Hotkey
^+Space:: quickMenu.Show()

; Copy function
Copy(text) {
    A_Clipboard := text  ; copy to clipboard

    ; Show tooltip for 900 ms
    ToolTip "Copied: " text
    SetTimer(HideToolTip, -900)  ; Correct AHK v2 syntax with negative timeout
}

HideToolTip() {
    ToolTip  ; hides tooltip
}
