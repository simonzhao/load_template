<?php
/**
 * ${ClassName}.php
 * 
 * PHP version 5
 *
 * @category PHP
 * @package  ComJJCommunityMissionSite
 * @author   ${author}
 * @license  http://www.jj.cn/ 竞技世界
 * @version  GIT:0.1
 * @link     http://doc.community.jjweb.cn/mission.community.jjweb.cn
 */

/**
 * ${ClassName}Controller.
 *
 * 任务控制器
 *
 * @category PHP
 * @package  ComJJCommunityMissionSite
 * @author   赵影楠 <zhaoyn@mail.jj.cn>
 * @license  http://www.jj.cn/ 竞技世界
 * @version  Release: 0.1
 * @link     http://doc.community.jjweb.cn/mission.comunity.jjweb.cn
 */
class ${ClassName}Controller extends Yaf_Controller_Abstract
{
    /**
     * 默认控制器
     *
     * @return bool
     */ 
    public function indexAction() {
        ${cursor}
        return TRUE;
    }
}
EXE_BEGIN_TEMPLATE
let classname = expand("%:t:r")
execute '%s/\${ClassName}/'.classname.'/g'
execute '%s/\${author}/'.g:template_author.'/g'
EXE_END_TEMPLATE
