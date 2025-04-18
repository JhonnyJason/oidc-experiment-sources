indexdomconnect = {name: "indexdomconnect"}

############################################################
indexdomconnect.initialize = () ->
    global.logoutbutton = document.getElementById("logoutbutton")
    global.inspectsessionbutton = document.getElementById("inspectsessionbutton")
    global.loginbutton = document.getElementById("loginbutton")
    return
    
module.exports = indexdomconnect