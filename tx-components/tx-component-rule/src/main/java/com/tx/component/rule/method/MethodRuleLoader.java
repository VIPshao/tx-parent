/*
 * 描          述:  <描述>
 * 修  改   人:  brady
 * 修改时间:  2013-1-24
 * <修改描述:>
 */
package com.tx.component.rule.method;

import java.util.List;

import com.tx.component.rule.context.RuleLoader;
import com.tx.component.rule.model.Rule;


 /**
  * 方法类型的规则加载器<br/>
  * 
  * @author  brady
  * @version  [版本号, 2013-1-24]
  * @see  [相关类/方法]
  * @since  [产品/模块版本]
  */
public class MethodRuleLoader implements RuleLoader{
    
    /** 规则存在的包 */
    private String rulePackage;
    
    /**
     * @return
     */
    @Override
    public List<Rule> load() {
        return null;
    }

    /**
     * @return
     */
    @Override
    public int getOrder() {
        return 0;
    }
}
