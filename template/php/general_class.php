<?php
/**
 * ${ClassName}.php
 * 
 * PHP version 5
 *
 * @category PHP
 * @package  ${ClassName}
 * @author   ${author}
 * @license  http://www.jj.cn/ 竞技世界
 * @version  GIT:0.1
 * @link     http://doc.community.jjweb.cn/
 */

/**
 * ${ClassName}
 *
 * 类的功能说明 
 *
 * @category PHP
 * @package  ${ClassName}
 * @author   ${author}
 * @license  http://www.jj.cn/ 竞技世界
 * @version  Release: 0.1
 * @link     http://doc.community.jjweb.cn/
 */
class ${ClassName}
{
    /**
     * __construct
     *
     * 构造函数 
     */ 
    public function __construct() {

    }
    /**
     * __destruct
     *
     * 析构函数 
     */
    public function __destruct() {

    }
}
EXE_BEGIN_TEMPLATE
let classname = expand("%:t:r")
execute '%s/\${ClassName}/'.classname.'/g'
execute '%s/\${author}/'.g:template_author.'/g'
EXE_END_TEMPLATE
