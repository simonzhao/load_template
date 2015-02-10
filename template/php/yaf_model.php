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
 * ${ClassName}Controller.
 *
 * 任务控制器
 *
 * @category PHP
 * @package  ${ClassName}
 * @author   赵影楠 <zhaoyn@mail.jj.cn>
 * @license  http://www.jj.cn/ 竞技世界
 * @version  Release: 0.1
 * @link     http://doc.community.jjweb.cn/
 */
class ${ClassName}Model
{
    /**
     * 构造函数 
     *
     * @return void
     */ 
    public function __construct() {

    }
    /**
     * 析构函数 
     * 
     * @return void 
     */
    public function __destruct() {

    }
}
EXE_BEGIN_TEMPLATE
let classname = expand("%:t:r")
execute '%s/\${ClassName}/'.classname.'/g'
execute '%s/\${author}/'.g:template_author.'/g'
EXE_END_TEMPLATE
