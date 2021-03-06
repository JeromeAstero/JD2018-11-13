package by.it.skarpovich.project.java.controller;

import javax.servlet.http.HttpServletRequest;

enum Action {

    RESET(new CmdReset()),
    INDEX(new CmdIndex()),
    LOGIN(new CmdLogin()),
    LOGOUT(new CmdLogOut()),
    PROFILE(new CmdProfile()),
    SIGNUP(new CmdSignup()),
    ADDPROJECT(new CmdAddProject()),
    EDITPROJECTS(new CmdEditProjects()),
    ORDERS(new CmdOrders()),
    EDITUSERS(new CmdEditUsers()),
    EDITORDERS(new CmdEditOrders()),
    BUYNOW(new CmdBuyNow()),
    //SUCCESS(new CmdSuccess()),

    ERROR(new CmdError());

    Cmd cmd;

    Action(Cmd cmdIndex) {
        cmd = cmdIndex;
    }
    String getJsp() {
        return "/" + this.name().toLowerCase() + ".jsp";
    }

    static Action define(HttpServletRequest req) {
        Action result = Action.INDEX;
        String command = req.getParameter("command");
        if (command != null && !command.isEmpty()) {
            try {
                result = Action.valueOf(command.toUpperCase());
            }
            catch (IllegalArgumentException e){
                //create our error
            }
        }
        return result;
    }

}
