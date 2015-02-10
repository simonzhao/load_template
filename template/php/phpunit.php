<?php
/**
 * ${ClassName}.php
 * 
 * PHP version 5
 *
 * @category PHP
 * @package  ComJJCommunity
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
 * @package  ComJJCommunity
 * @author   ${author} 
 * @license  http://www.jj.cn/ 竞技世界
 * @version  Release: 0.1
 * @link     http://doc.community.jjweb.cn/
 */
class ${ClassName} extends PHPUnit_Framework_TestCase 
{
	/**
	 * 测试环境准备 
	 * 
	 * @return void 
	 */
	public function setUp() {

	}

	/**
	 * 测试环境清理 
	 * 
	 * @return void 
	 */
	public function tearDown() {

	}

    /**
     * 测试用例 
     *
     * @return void 
     */ 
    public function testIndex() {
        $this->assertEquals( 1, 1 );
    }
}
EXE_BEGIN_TEMPLATE
let classname = expand("%:t:r")
execute '%s/\${ClassName}/'.classname.'/g'
execute '%s/\${author}/'.g:template_author.'/g'
EXE_END_TEMPLATE
