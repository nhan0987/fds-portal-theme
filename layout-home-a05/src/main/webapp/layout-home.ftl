<div class="layout-home-a05" id="main-content" role="main">
	<div class="portlet-layout row">
		<div class="col-xs-12 portlet-column portlet-column-first" id="column-1">
			${processor.processColumn("column-1", "portlet-column-content portlet-column-content-first")}
		</div>
	</div>
	<div class="container">
		<div class="portlet-layout row">
			<div class="col-md-9 portlet-column portlet-column-first" id="column-2">
				${processor.processColumn("column-2", "portlet-column-content portlet-column-content-first")}
			</div>
	
			<div class="col-md-3 portlet-column portlet-column-last" id="column-3">
				${processor.processColumn("column-3", "portlet-column-content portlet-column-content-last")}
			</div>
		</div>
	</div>
</div>