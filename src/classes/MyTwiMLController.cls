public class MyTwiMLController {

    public MyTwiMLController() {}
    
    public String getTwiml() {
        TwilioTwiML.Response res = new TwilioTwiML.Response();
        res.append(new TwilioTwiML.Say('Hello, Monkey!'));
        res.append(
            new TwilioTwiML.Play('http://demo.twilio.com/hellomonkey/monkey.mp3'));
        res.append(new TwilioTwiML.Hangup());
        return res.toXML();
    }
}