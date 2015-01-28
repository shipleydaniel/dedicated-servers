	<div class="container-fluid">
		<div id="hdbanner" class="midsize row">
			<div class="col-xs-12">
				<div class="wrapper">
					<span class="fa fa-hdd-o"></span>
					<h1>{if runningExp('dedicated')}Dedicated{else}Bare Metal{/if} Servers</h1>
					<p>Custom hardware builds within our powerful, redundant infrastructure.</p>
				</div>
			</div>
		</div>
	</div>
	<section id="content">
		<div class="row">
			<div class="col-sm-4 col-md-3 proctype">
				<h2><span class="procbox"></span> Single Processor</h2>
				<div class="grpprice">
					<small>Starting at</small>
					{$cores[1][0]['startmonthly']|price}
				</div>
				<table class="table table-striped table-condensed">
					<tr><td>Up to 32GB <strong>RAM</strong></td></tr>
					<tr><td>Up to 8 <strong>cores</strong></td></tr>
					<tr><td>Up to 4 <strong>hard drives</strong></td></tr>
					<tr><td>Up to 4TB <strong>per drive</strong></td></tr>
					<tr><td><strong>10TB Bandwidth</strong> Included</td></tr>
				</table>
				<button class="btn btn-primary btn-block singleprocbtn">View Servers</button>
			</div>
			<div class="col-sm-4 col-md-3 proctype">
				<h2><span class="procbox dual"></span> <span class="procbox dual"></span> Dual Processors</h2>
				<div class="grpprice">
					<small>Starting at</small>
					{$cores[2][0]['startmonthly']|price}
				</div>
				<table class="table table-striped table-condensed">
					<tr><td>Up to 128GB <strong>RAM</strong></td></tr>
					<tr><td>Up to 16 <strong>cores</strong></td></tr>
					<tr><td>Up to 8 <strong>hard drives</strong></td></tr>
					<tr><td>Up to 4TB <strong>per drive</strong></td></tr>
					<tr><td><strong>10TB Bandwidth</strong> Included</td></tr>
				</table>
				<button class="btn btn-primary btn-block dualprocbtn">View Servers</button>
			</div>
			<div class="col-sm-4 col-md-3 proctype">
				<h2><span class="stacked-procbox"><span class="procbox"></span> <span class="procbox"></span> <span class="procbox"></span> <span class="procbox"></span></span> Quad Processors</h2>
				<div class="grpprice">
					<small>Starting at</small>
					{$cores[4][0]['startmonthly']|price}
				</div>
				<table class="table table-striped table-condensed">
					<tr><td>Up to 512GB <strong>RAM</strong></td></tr>
					<tr><td>Up to 32 <strong>cores</strong></td></tr>
					<tr><td>Up to 6 <strong>hard drives</strong></td></tr>
					<tr><td>Up to 4TB <strong>per drive</strong></td></tr>
					<tr><td><strong>10TB Bandwidth</strong> Included</td></tr>
				</table>
				<button class="btn btn-primary btn-block quadprocbtn">View Servers</button>
			</div>
			<div class="hidden-xs hidden-sm col-md-3">
				<div class="well row well-sm text-center">
					<div class="col-md-12">
						<h2><span class="fa fa-bolt"></span> Fast Provisioning</h2>
						<p>Launch within 4 hours.</p>
					</div>
					<div class="col-md-12">
						<h2><span class="fa fa-cloud-upload"></span> Tier 1 Carriers</h2>
						<p>The lowest latency possible.</p>
					</div>
					<div class="col-md-12">
						<h2><span class="fa fa-download"></span> Unmetered Inbound</h2>
						<p>All inbound bandwidth is free.</p>
					</div>
					<div class="col-md-12">
						<h2><span class="fa fa-lock"></span> DDoS Protection</h2>
						<p>Available for all servers. <a href="/data-center/ddos-protection.html"><span class="fa fa-info-circle"></span></a></p>
					</div>
					<div class="col-md-12">
						<h2><span class="fa fa-plus-circle"></span> Low-Cost Upgrades</h2>
						<p>Start an order to see.</p>
					</div>
				</div>
			</div>
		</div>

		<a name="listings"></a>
		<hr />

		<div class="row">
			<div class="col-sm-12">
			{foreach from=$cores key=type item=servers}
				{if $showonly eq '' || $showonly eq $type}
				<div id="servers{$type|replace:' ':''}" class="serverlisting">
					{if $type eq 1}
					<h2><span class="procbox"></span></span> Single Processor Dedicated Servers</h2>
					{elseif $type eq 2}
					<h2><span class="procbox dual"></span> <span class="procbox dual"></span> Dual Processor Dedicated Servers</h2>
					{elseif $type eq 4}
					<h2><span class="stacked-procbox"><span class="procbox"></span> <span class="procbox"></span> <span class="procbox"></span> <span class="procbox"></span></span> Quad Processor Dedicated Servers</h2>
					{/if}
					
<!-- RDSHIPLEY edits start here -->

					<div class="col-md-12">
					
						{foreach from=$servers key=coreid item=server}
						
							<div class="col-xs-3">
								<p>Starting At</p>
								<p class="servername"><a href="/dedicated-servers/details.html?id={$server.id}">{$server.name}</a></p>
								<p class="cpuspeed">{$server.speed} x {$server.cores|replace:' cores':''}</p>
								<p class="hdd">{$server.hd1|replace:' SATA':''}</p>
								<p class="ram">{$server.ram}</p>
								<p class="bw">{$server.bandwidth} <span>{$lang.out}</span></p>
								<p class="price">
									<span class="money{if $server.saleprice} onsale{/if}">{if $server.saleprice}{$server.saleprice|Price}{else}{$server.startmonthly|Price}{/if} {if $server.startsetup && $server.startsetup neq "0.00"}<span class="setup">+ {$server.startsetup|Price} setup</span>{/if}</span>
								</p>
								<div class="configbuttons">
									{if $server.stocked eq 1}
									<a class="configbtn btn pull-right btn-success btn-xs{if $server.saleprice} onsale{/if}" href="{if $server.saleprice}/specials/current.html{else}/order/order.html?id={$server.id}{/if}" data-target="#quickOrder{$server.id}">Quick Buy</a>
									<a class="btn btn-xs pull-right btn-default" href="{if $server.saleprice}/specials/current.html{else}/order/order.html?id={$server.id}{/if}">Configure</a>
									{else}
									<a class="btn pull-right btn-default btn-xs{if $server.saleprice} onsale{/if}" href="{if $server.saleprice}/specials/current.html{else}/order/order.html?id={$server.id}{/if}"><i class="glyphicon glyphicon-time"></i> {$lang.preorder}</a>
									{/if}
								</div>
							<div>
							
						{/foreach}
						
					</div>
					
<!-- RDSHIPLEY edits end here -->

					<div class="extraspace text-center">
						<h2>More Options</h2>
						<button class="btn btn-primary singleprocbtn">Single Processor</button>
						<button class="btn btn-primary dualprocbtn">Dual Processors</button>
						<button class="btn btn-primary quadprocbtn">Quad Processors</button>
					</div>
					<hr />
				</div>
				{/if}
			{/foreach}
			</div>
		</div>

		<div class="getkudos-inline" data-site-name="lsn" data-layout="inline"></div>
	</section>


{foreach from=$cores key=type item=servers}
	{foreach from=$servers key=coreid item=server}
		<div class="modal fade" id="quickOrder{$server.id}">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						<h4 class="modal-title"><strong>Quick Buy</strong> - {$server.name}</h4>
					</div>
					<form action="/order/order.html" method="get" class="form-horizontal">
						<div class="modal-body">
							<div class="form-group">
								<div class="col-sm-3 control-label">Primary Hard Drive</div>
								<div class="col-sm-9"><select name="o3" class="form-control">
									{if $server.hd1|strstr:"Enterprise"}
										{if $server.hd1|strstr:"250GB"}
										<option value="20000">250GB SATA Enterprise - Included</option>
										<option value="20015">60GB SSD - Included</option>
										<option value="20155">128GB SSD - add $15</option>
										<option value="20157">256GB SSD - add $35</option>
										<option value="20159">512GB SSD - add $80</option>
										<option value="20020">500GB SATA Enterprise - add $3</option>
										<option value="20060">1TB SATA Enterprise - add $8</option>
										<option value="20080">2TB SATA Enterprise - add $15</option>
										<option value="20084">3TB SATA Enterprise - add $35</option>
										<option value="20088">4TB SATA Enterprise - add $50</option>
										{else}
										<option value="20020">500GB SATA Enterprise - Included</option>
										<option value="20015">60GB SSD - Included</option>
										<option value="20155">128GB SSD - add $12</option>
										<option value="20157">256GB SSD - add $32</option>
										<option value="20159">512GB SSD - add $77</option>
										<option value="20060">1TB SATA Enterprise - add $5</option>
										<option value="20080">2TB SATA Enterprise - add $16</option>
										<option value="20084">3TB SATA Enterprise - add $30</option>
										<option value="20088">4TB SATA Enterprise - add $45</option>
										{/if}
									{else}
									<option value="10040">500GB SATA - Included</option>
									<option value="9980">60GB SSD - Included</option>
									<option value="10275">128GB SSD - add $15</option>
									<option value="10277">256GB SSD - add $35</option>
									<option value="10279">512GB SSD - add $80</option>
									<option value="10080">1TB SATA - add $10</option>
									<option value="10100">2TB SATA - add $16</option>
									<option value="10205">3TB SATA - add $30</option>
									<option value="10210">4TB SATA - add $45</option>
									{/if}
								</select></div>
							</div>
							<div class="form-group">
								<div class="col-sm-3 control-label">RAM</div>
								<div class="col-sm-9"><select name="o1" class="form-control">
									{if $server.cores eq '4 cores'}
										{if $server.ram|strstr:"4GB"}
										<option value="30000">4GB - Included</option>
										<option value="30001">8GB - add $10</option>
										<option value="30002">16GB - add $20</option>
										<option value="30003">24GB - add $32</option>
										<option value="30004">32GB - add $43</option>
										{else if $server.ram|strstr:"8GB"}
										<option value="30001">8GB - Included</option>
										<option value="30002">16GB - add $10</option>
										<option value="30003">24GB - add $22</option>
										<option value="30004">32GB - add $33</option>
										{/if}
									{else if $server.name|strstr:"Dual"}
										{if $server.name|strstr:"E5-"}
											{if $server.ram|strstr:"4GB"}
											<option value="50000">4GB - Included</option>
											<option value="50001">8GB - add $10</option>
											<option value="50002">16GB - add $20</option>
											<option value="50003">24GB - add $32</option>
											<option value="50004">32GB - add $43</option>
											{else if $server.ram|strstr:"8GB"}
											<option value="50001">8GB - Included</option>
											<option value="50002">16GB - add $10</option>
											<option value="50003">24GB - add $22</option>
											<option value="50004">32GB - add $33</option>
											<option value="50006">64GB - add $76</option>
											{/if}
										{else}
										<option value="40000">4GB - Included</option>
										<option value="40001">12GB - add $8</option>
										<option value="40002">18GB - add $14</option>
										<option value="40003">24GB - add $20</option>
										<option value="40004">36GB - add $30</option>
										{/if}
									{else if $server.name|strstr:"Quad"}
									<option value="50002">16GB - Included</option>
									<option value="50003">24GB - add $12</option>
									<option value="50004">32GB - add $23</option>
									<option value="50006">64GB - add $66</option>
									<option value="50008">96GB - add $109</option>
									{/if}
								</select></div>
							</div>
							<div class="form-group">
								<div class="col-sm-3 control-label">Operating System</div>
								<div class="col-sm-9"><select name="o8" class="form-control">
									<option value="4">CentOS (64 bit) - Free</option>
									<option value="6">Debian (64 bit) - Free</option>
									<option value="25">Windows 2008 Web R2 (64 bit) - Free</option>
									<option value="35">Windows 2012 Standard (64 bit) - add $35</option>
								</select></div>
							</div>
							<div class="form-group">
								<div class="col-sm-3 control-label">Control Panel</div>
								<div class="col-sm-9"><select name="o9" class="form-control">
									<option value="1">None</option>
									<option value="24">Parallels Plesk Panel 12 - Web Admin Edition - add $3.50</option>
									<option value="25">Parallels Plesk Panel 12 - Web App Edition - add $4.50</option>
									<option value="26">Parallels Plesk Panel 12 - Web Pro Edition - add $8</option>
									<option value="27">Parallels Plesk Panel 12 - Web Host Edition - add $20</option>
									<option value="4">cPanel/WHM - add $25</option>
									<option value="8">SolusVM - Master (OpenVZ) - add $8</option>
								</select></div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-default moreoptionsbtn">More Options</button>
							<button type="submit" class="btn btn-success">Buy Now</button>
						</div>
						<input type="hidden" name="id" value="{$server.id}" />
						<input type="hidden" name="reset" value="yes" />
						<input type="hidden" name="force" value="1" class="forceflag" />
					</form>
				</div>
			</div>
		</div>
	{/foreach}
{/foreach}