{config_load file="$conf_file"}

{include file='header.tpl'}

	<div id="main">
		<div id="main-precontents"></div>
		<div id="main-contents" class="main-contents">
			<script type="text/javascript">
				g_initPath({$page.path});
			</script>

			<div id="lv-items" class="listview"></div>

			<script type="text/javascript">
				{if $allitems}{include	file='bricks/allitems_table.tpl'		data=$allitems}{/if}
				{include		file='bricks/item_table.tpl' id='items'	data=$items}
			</script>



			<div class="clear"></div>
		</div>
	</div>

<div class="common-page" style="display:none;">{$pagenew}</div>

{literal}
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
    $('.listview-nav').html($('.common-page').html());
});
</script>
{/literal}

{include file='footer.tpl'}
