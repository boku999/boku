package cn.bdqn.tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigManager {
//    private static ConfigManager_01 configManager ;
    Properties params;

    /**
     * 私有的构造
     */
    private ConfigManager(){
         params=new Properties();
        String configFile = "database.properties";
        InputStream is= ConfigManager.class.getClassLoader().getResourceAsStream(configFile);
        try {
            params.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 静态内部类
     */

    public static class ConfigManager_01Helper{
        private static ConfigManager configManager=new ConfigManager() ;
    }

    /**
     * 向外界提供一个公共的方法
     * @return
     */
   public  static ConfigManager getConfigManager(){

        return ConfigManager_01Helper.configManager;
   }

   public String getValueByKey(String key){
       return  params.getProperty(key);
   }
}
