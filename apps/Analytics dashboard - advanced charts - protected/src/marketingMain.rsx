<Container
  id="marketingMain"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="## Marketing Data Analytics Tool"
      verticalAlign="center"
    />
  </Header>
  <View id="976c1" viewKey="View 1">
    <Include src="./filtersContainer.rsx" />
    <Include src="./metricsContainer.rsx" />
    <Container
      id="dataContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Session Events"
          verticalAlign="center"
        />
      </Header>
      <View id="976c1" viewKey="View 1">
        <Table
          id="sessionEventsTable"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ filteredData.value }}"
          defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
          emptyMessage="No sessions found. Please update the filters."
          enableSaveActions={true}
          primaryKeyColumnId="2898a"
          rowHeight="medium"
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="2898a"
            alignment="right"
            editable={false}
            format="decimal"
            groupAggregationMode="countDistinct"
            hidden="true"
            key="id"
            label="ID"
            position="center"
            size={38.609375}
            summaryAggregationMode="none"
          />
          <Column
            id="db7c6"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="user_id"
            label="User ID"
            placeholder="Enter value"
            position="center"
            size={126}
            summaryAggregationMode="none"
          />
          <Column
            id="2d6ab"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="false"
            key="content_id"
            label="Content ID"
            placeholder="Enter value"
            position="center"
            size={147}
            summaryAggregationMode="none"
          />
          <Column
            id="6c405"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="timestamp"
            label="Timestamp"
            placeholder="Enter value"
            position="center"
            size={147}
            summaryAggregationMode="none"
          />
          <Column
            id="54add"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="false"
            key="content_type"
            label="Content type"
            placeholder="Select option"
            position="center"
            size={101}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="f85a4"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="false"
            key="watch_time"
            label="Watch time"
            placeholder="Enter value"
            position="center"
            size={95}
            summaryAggregationMode="none"
          />
          <Column
            id="5161c"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="user_age"
            label="User age"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="c8afa"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="user_region"
            label="User region"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="4e2e9"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="device_type"
            label="Device type"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="b0ffd"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="subscription_type"
            label="Subscription type"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="ce7ed"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="engagement_level"
            label="Engagement level"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="7e929"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="total_sessions"
            label="Total sessions"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="48393"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="avg_session_duration"
            label="Avg session duration"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a5e4e"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="total_watch_time"
            label="Total watch time"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="3614a"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="preferred_genre"
            label="Preferred genre"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="97c3f"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="favorite_actor"
            label="Favorite actor"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="0e9b2"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            hidden="true"
            key="last_login_date"
            label="Last login date"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="3d35c"
            alignment="left"
            format="boolean"
            groupAggregationMode="none"
            hidden="true"
            key="is_subscriber"
            label="Is subscriber"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="f4dd0"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="risk_level"
            label="Risk level"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="ccc47"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="recommended_intervention"
            label="Recommended intervention"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Action
            id="e679b"
            icon="bold/interface-add-circle-alternate"
            label="Session Details"
          >
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="sessionDetailsDrawer"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="interventionRecommendationSubject"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="interventionRecommendationContent"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="sessionEventsTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="sessionEventsTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="selectRow"
            method="run"
            params={{
              map: {
                src: "rawData.trigger({\n  additionalScope: {\n    \n  }\n})",
              },
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="chartsContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Session Comparison"
          verticalAlign="center"
        />
      </Header>
      <View id="976c1" viewKey="View 1">
        <Container
          id="container7"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
          style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
        >
          <Header>
            <Text
              id="containerTitle7"
              value="#### Watch time (in minutes)"
              verticalAlign="center"
            />
          </Header>
          <View id="ef7b1" viewKey="View 1">
            <Chart
              id="pieChart1"
              chartType="pie"
              colorArray={[
                "#11B5AE",
                "#4046CA",
                "#F68512",
                "#DE3C82",
                "#7E84FA",
                "#72E06A",
              ]}
              colorArrayDropDown={[
                "#11B5AE",
                "#4046CA",
                "#F68512",
                "#DE3C82",
                "#7E84FA",
                "#72E06A",
              ]}
              colorInputMode="colorArrayDropDown"
              datasource="{{ chartWatchTimeContent.value }}"
              datasourceMode="source"
              gradientColorArray={[
                ["0.0", "{{ theme.canvas }}"],
                ["1.0", "{{ theme.primary }}"],
              ]}
              hoverTemplate={null}
              hoverTemplateMode="source"
              labelData="{{ formatDataAsObject(chartWatchTimeContent.value).content_type }}"
              labelDataMode="source"
              legendPosition="none"
              lineColor="{{ theme.surfacePrimary }}"
              lineWidth={2}
              pieDataHole={0.4}
              selectedPoints="[]"
              textTemplate="%{value}<br>%{label}"
              textTemplateMode="source"
              textTemplatePosition="outside"
              title="By Content Type"
              valueData="{{ formatDataAsObject(chartWatchTimeContent.value).average_watch_time }}"
              valueDataMode="source"
            />
            <Chart
              id="chart1"
              barGap={0.4}
              barMode="group"
              legendPosition="none"
              selectedPoints="[]"
              stackedBarTotalsDataLabelPosition="none"
              title="By Age Group"
              xAxisRangeMax=""
              xAxisRangeMin=""
              xAxisShowTickLabels={true}
              xAxisSort="ascending"
              xAxisTickFormatMode="gui"
              yAxis2LineWidth={1}
              yAxis2RangeMax=""
              yAxis2RangeMin=""
              yAxis2ShowTickLabels={true}
              yAxis2TickFormatMode="gui"
              yAxisRangeMax=""
              yAxisRangeMin=""
              yAxisShowTickLabels={true}
              yAxisTickFormatMode="gui"
            >
              <Series
                id="0"
                aggregationType="sum"
                colorArray={{ array: ["{{ theme.primary }}"] }}
                colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
                colorInputMode="colorArrayDropDown"
                connectorLineColor="#000000"
                dataLabelPosition="outside"
                datasource="{{ chartWatchTimeUsers.value }}"
                datasourceMode="source"
                decreasingBorderColor="{{ theme.danger }}"
                decreasingColor="{{ theme.danger }}"
                filteredGroups={null}
                filteredGroupsMode="source"
                gradientColorArray={{
                  array: [
                    { array: ["0.0", "{{ theme.success }}"] },
                    { array: ["1.0", "{{ theme.primary }}"] },
                  ],
                }}
                groupBy={{ array: [] }}
                groupByDropdownType="source"
                groupByStyles={{}}
                hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
                hoverTemplateMode="source"
                increasingBorderColor="{{ theme.success }}"
                increasingColor="{{ theme.success }}"
                lineColor="{{ theme.primary }}"
                lineDash="solid"
                lineShape="linear"
                lineUnderFillMode="none"
                lineWidth={2}
                markerBorderColor="#11b5ae"
                markerBorderWidth={0}
                markerColor="#11b5ae"
                markerSize={6}
                markerSymbol="circle"
                name="Watch time (min)"
                showMarkers={false}
                textTemplate="%{y}"
                textTemplateMode="manual"
                type="bar"
                waterfallBase={0}
                waterfallMeasures={null}
                waterfallMeasuresMode="source"
                xData="{{ formatDataAsObject(chartWatchTimeUsers.value).age_group }}"
                xDataMode="source"
                yAxis="y"
                yData="{{ formatDataAsObject(chartWatchTimeUsers.value).average_watch_time }}"
                yDataMode="source"
                zData={null}
                zDataMode="manual"
              />
            </Chart>
          </View>
        </Container>
        <Container
          id="container5"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
          style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
        >
          <Header>
            <Text
              id="containerTitle5"
              value="#### Sessions over time"
              verticalAlign="center"
            />
          </Header>
          <View id="ef7b1" viewKey="View 1">
            <RadioGroup
              id="select1"
              groupLayout="wrap"
              itemMode="static"
              label=""
              value="Daily"
            >
              <Option id="70dea" disabled={false} label="Daily" value="Daily" />
              <Option
                id="abe58"
                disabled={false}
                label="Weekly"
                value="Weekly"
              />
              <Option
                id="9f790"
                disabled={false}
                label="Monthly"
                value="Monthly"
              />
              <Option
                id="a2a2a"
                caption={null}
                disabled={false}
                hidden={null}
                label="Quarterly"
                tooltip={null}
                value="Quarterly"
              />
              <Event
                event="change"
                method="setValue"
                params={{
                  ordered: [
                    {
                      value:
                        '{{ self.value === "Daily" ? chartSessionsDaily.value : self.value === "Weekly" ? chartSessionsWeekly.value : self.value === "Monthly" ? chartSessionsMonthly.value : chartSessionsQuarterly.value }}',
                    },
                  ],
                }}
                pluginId="itemToChart"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </RadioGroup>
            <Chart
              id="chart3"
              barGap="0.2"
              barMode="group"
              barOrientation=""
              chartType="line"
              legendPosition="none"
              selectedPoints="[]"
              stackedBarTotalsDataLabelPosition="none"
              title={null}
              xAxisLineWidth={1}
              xAxisRangeMax=""
              xAxisRangeMin=""
              xAxisShowLine={true}
              xAxisShowTickLabels={true}
              xAxisTickFormatMode="gui"
              yAxis2LineWidth={1}
              yAxis2RangeMax=""
              yAxis2RangeMin=""
              yAxis2ShowTickLabels={true}
              yAxis2TickFormatMode="gui"
              yAxisGrid={true}
              yAxisLineWidth={1}
              yAxisRangeMax=""
              yAxisRangeMin=""
              yAxisShowTickLabels={true}
              yAxisTickFormatMode="gui"
              yAxisTitle="Unique sessions"
            >
              <Series
                id="0"
                aggregationType="sum"
                colorArray={{ array: [null] }}
                colorArrayDropDown={{ array: [null] }}
                colorInputMode="colorArrayDropDown"
                connectorLineColor="#000000"
                dataLabelPosition="none"
                datasource="{{ itemToChart.value }}"
                datasourceMode="manual"
                decreasingBorderColor="{{ theme.danger }}"
                decreasingColor="{{ theme.danger }}"
                filteredGroups={null}
                filteredGroupsMode="source"
                gradientColorArray={{
                  array: [
                    { array: ["0.0", "{{ theme.success }}"] },
                    { array: ["1.0", "{{ theme.primary }}"] },
                  ],
                }}
                groupBy={{ array: [] }}
                groupByDropdownType="source"
                groupByStyles={{}}
                hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
                hoverTemplateMode="source"
                increasingBorderColor="{{ theme.success }}"
                increasingColor="{{ theme.success }}"
                lineColor="{{ theme.primary }}"
                lineDash="solid"
                lineShape="spline"
                lineUnderFillMode="gradient"
                lineWidth={2}
                markerBorderColor={null}
                markerBorderWidth={0}
                markerColor="{{ theme.primary }}"
                markerSize={6}
                markerSymbol="circle"
                name="Sessions over time"
                showMarkers={false}
                textTemplate={null}
                textTemplateMode="manual"
                type="bar"
                waterfallBase={0}
                waterfallMeasures={null}
                waterfallMeasuresMode="source"
                xData="{{ formatDataAsObject(itemToChart.value).time }}"
                xDataMode="source"
                yAxis="y"
                yData="{{ formatDataAsObject(itemToChart.value).count }}"
                yDataMode="source"
                zData={null}
                zDataMode="manual"
              />
            </Chart>
          </View>
        </Container>
        <Container
          id="container6"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
          style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
        >
          <Header>
            <Text
              id="containerTitle6"
              value="#### Engagement by region"
              verticalAlign="center"
            />
          </Header>
          <View id="ef7b1" viewKey="View 1">
            <Chart
              id="chart2"
              barGap="2"
              barMode="group"
              barOrientation=""
              chartType="line"
              legendPosition="bottom"
              selectedPoints="[]"
              stackedBarTotalsDataLabelPosition="none"
              title={null}
              xAxisLineWidth={1}
              xAxisRangeMax=""
              xAxisRangeMin=""
              xAxisShowLine={true}
              xAxisShowTickLabels={true}
              xAxisSort="ascending"
              xAxisTickFormatMode="gui"
              yAxis2LineWidth={1}
              yAxis2RangeMax=""
              yAxis2RangeMin=""
              yAxis2ShowTickLabels={true}
              yAxis2TickFormatMode="gui"
              yAxisGrid={true}
              yAxisLineWidth={1}
              yAxisRangeMax=""
              yAxisRangeMin=""
              yAxisShowTickLabels={true}
              yAxisTickFormatMode="gui"
              yAxisTitle="Engagement (sessions)"
            >
              <Series
                id="0"
                aggregationType="sum"
                colorArray={{ array: [null] }}
                colorArrayDropDown={{ array: [null] }}
                colorInputMode="colorArrayDropDown"
                connectorLineColor="#000000"
                dataLabelPosition="none"
                datasource="{{ chartEngagementRegion.value }}"
                datasourceMode="source"
                decreasingBorderColor="{{ theme.danger }}"
                decreasingColor="{{ theme.danger }}"
                filteredGroups={null}
                filteredGroupsMode="source"
                gradientColorArray={{
                  array: [
                    { array: ["0.0", "{{ theme.success }}"] },
                    { array: ["1.0", "{{ theme.primary }}"] },
                  ],
                }}
                groupBy={{ array: ["engagement_rate"] }}
                groupByDropdownType="source"
                groupByStyles={{
                  High: {
                    ordered: [
                      { markerColor: "#4046ca" },
                      { markerBorderColor: "#4046ca" },
                    ],
                  },
                  Medium: {
                    ordered: [
                      { markerColor: "#de3c82" },
                      { markerBorderColor: "#de3c82" },
                    ],
                  },
                  Low: {
                    ordered: [
                      { markerColor: "#f68512" },
                      { markerBorderColor: "#f68512" },
                    ],
                  },
                }}
                hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
                hoverTemplateMode="source"
                increasingBorderColor="{{ theme.success }}"
                increasingColor="{{ theme.success }}"
                lineColor="{{ theme.primary }}"
                lineDash="solid"
                lineShape="spline"
                lineUnderFillMode="gradient"
                lineWidth={2}
                markerBorderColor={null}
                markerBorderWidth={0}
                markerColor="{{ theme.primary }}"
                markerSize={6}
                markerSymbol="circle"
                name="Region Engagement"
                showMarkers={false}
                textTemplate={null}
                textTemplateMode="source"
                type="bar"
                waterfallBase={0}
                waterfallMeasures={null}
                waterfallMeasuresMode="source"
                xData="{{ formatDataAsObject(chartEngagementRegion.value).user_region }}"
                xDataMode="source"
                yAxis="y"
                yData="{{ formatDataAsObject(chartEngagementRegion.value).count }}"
                yDataMode="source"
                zData={null}
                zDataMode="manual"
              />
            </Chart>
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="container8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
    >
      <Header>
        <Text
          id="containerTitle8"
          value="#### My tasks"
          verticalAlign="center"
        />
        <Button
          id="button3"
          style={{
            ordered: [
              { fontSize: "10px" },
              { fontWeight: "300" },
              { fontFamily: "Inter" },
            ],
          }}
          styleVariant="outline"
          text="Refresh"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getUserTasks"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="3fa07" viewKey="View 1">
        <Text
          id="text7"
          value="👋 Hello **{{ current_user.fullName || 'friend' }}**, you have {{ tasksTable.data.length }} assigned task(s)."
          verticalAlign="center"
        />
        <Table
          id="tasksTable"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getUserTasks.data.data }}"
          defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
          emptyMessage="All clear 🏜️"
          enableSaveActions={true}
          heightType="auto"
          primaryKeyColumnId="9b1a3"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="9b1a3"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="46264"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="workflowId"
            label="Workflow ID"
            placeholder="Enter value"
            position="center"
            size={98}
            summaryAggregationMode="none"
          />
          <Column
            id="0396a"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="workflowName"
            label="Workflow name"
            placeholder="Enter value"
            position="center"
            size={267}
            summaryAggregationMode="none"
          />
          <Column
            id="a77c2"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="workflowRunId"
            label="Workflow run ID"
            placeholder="Enter value"
            position="center"
            size={204}
            summaryAggregationMode="none"
          />
          <Column
            id="1bf38"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="taskName"
            label="Task name"
            placeholder="Select option"
            position="center"
            size={148}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="dc86b"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status"
            label="Status"
            placeholder="Select option"
            position="center"
            size={89}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="c5407"
            alignment="left"
            format="json"
            groupAggregationMode="none"
            hidden="true"
            key="context"
            label="Context"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="0db8b"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="createdAt"
            label="Created at"
            placeholder="Enter value"
            position="center"
            size={125}
            summaryAggregationMode="none"
          />
          <Column
            id="79a64"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            hidden="true"
            key="userTaskLink"
            label="User task link"
            position="center"
            size={239}
            summaryAggregationMode="none"
          />
          <Column
            id="30b7b"
            alignment="left"
            cellTooltipMode="overflow"
            format="avatar"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="assignees"
            label="Marketing Representative
"
            placeholder="No user"
            position="center"
            size={185}
            summaryAggregationMode="none"
            valueOverride="{{ item[0].name }}"
          />
          <Column
            id="68d03"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="workflowRelease"
            label="Workflow release"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="f9ed4"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="expiresAt"
            label="Expires at"
            placeholder="Enter value"
            position="center"
            size={137}
            summaryAggregationMode="none"
          />
          <Action id="7c6a1" icon="line/interface-edit-view" label="Review">
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="taskDrawer"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getUserTasks"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getSingleUserTask"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="tasksTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="tasksTable"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
  </View>
</Container>
