/*
 * 描          述:  <描述>
 * 修  改   人:  PengQingyang
 * 修改时间:  2012-10-23
 * <修改描述:>
 */
package test.com.tx.component.config;

import com.tx.component.config.model.ConfigPropertyItem;
import com.tx.component.config.support.ConfigResourcePropertiesPersister;
import com.tx.component.config.support.cppersister.CustomizedConfigPropertiesPersister;

/**
 * <测试配置容器>
 * <功能详细描述>
 * 
 * @author  PengQingyang
 * @version  [版本号, 2012-10-23]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */
public class TestConfigConext {
    
    public static void main(String[] args) {
        //ApplicationContext context = new ClassPathXmlApplicationContext(
        //        "classpath:/com/tx/component/config/applicationContext-config.xml");
        
        ConfigResourcePropertiesPersister  crpp = 
                CustomizedConfigPropertiesPersister.newInstance();
        
        
        
        ConfigPropertyItem c = new ConfigPropertyItem();
        c.setValue("-->添加到被观察之前设置的值");
        
        c.addObserver(crpp);
        
        c.setValue("-->添加被观察之后改变的值");
        
    }
    
}
