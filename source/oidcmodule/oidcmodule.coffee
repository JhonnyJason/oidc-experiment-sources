############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("oidcmodule")
#endregion

############################################################
export initialize = ->
    log "initialize"
    loginbutton.addEventListener("click", loginClicked)
    inspectsessionbutton.addEventListener("click", inspectSessionClicked)
    logoutbutton.addEventListener("click", logoutClicked)
    return

############################################################
loginClicked = ->
    log "loginClicked"
    initiateAuth()
    return

inspectSessionClicked = ->
    log "inspectSessionClicked"
    alert "inspectSessionClicked"
    return

logoutClicked = ->
    log "logoutClicked"
    alert "logoutClicked"
    return


############################################################
initiateAuth = ->
    log "initiateAuth"

    dexRoute = "localhost:5556/auth"
    clientId = encodeURIComponent("example App")
    redirectURI = encodeURIComponent("https://localhost:3000/callback")
    responseType = encodeURIComponent()
    scope = encodeURIComponent()
    state = encodeURIComponent()
    codeChallenge = encodeURIComponent()
    codeChallengeMethod = encodeURIComponent()

    requestURL = "https://#{dexRoute}?"
    requestURL += "client_id=#{clientId}&"
    requestURL += "redirect_uri=#{redirectURI}&"
    requestURL += "response_type=#{responseType}&"
    requestURL += "scope=#{scope}&"
    requestURL += "state=#{state}&"
    requestURL += "code_challenge=#{codeChallenge}&"
    requestURL += "code_challenge_method=#{codeChallengeMethod}"
 
    alert requestURL
    return