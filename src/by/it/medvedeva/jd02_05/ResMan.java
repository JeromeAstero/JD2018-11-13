package by.it.medvedeva.jd02_05;

import java.util.Locale;
import java.util.ResourceBundle;

enum  ResMan {
    INSTANCE;

    private ResMan(){
        setLocale(Locale.getDefault());
    }
    private ResourceBundle resourceBundle;

    public void setLocale(Locale locale){
        resourceBundle=ResourceBundle.getBundle("by.it.medvedeva.jd02_05.res.translate", locale);
    }
    public String get(String key){
        return resourceBundle.getString(key);
    }
}

