<Screen
  id="insights"
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <Folder id="resources">
    <SqlQueryUnified
      id="rawData"
      query={include("../lib/rawData.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="b32a9280-ef49-4b13-a3bd-64d1ed97c8a6"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <Function
      id="filteredData"
      funcBody={include("../lib/filteredData.js", "string")}
    />
  </Folder>
  <Folder id="filters">
    <SqlTransformQuery
      id="regionFilter"
      query={include("../lib/regionFilter.sql", "string")}
      resourceName="SQL Transforms"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="metrics">
    <Function
      id="completionRate"
      funcBody={include("../lib/completionRate.js", "string")}
    />
  </Folder>
  <Folder id="actions">
    <SqlQueryUnified
      id="query3"
      notificationDuration={4.5}
      resourceDisplayName="retool_db"
      resourceName="b32a9280-ef49-4b13-a3bd-64d1ed97c8a6"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Include src="./drawerFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="headerContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="96842" viewKey="View 1">
        <Text
          id="text1"
          style={{ ordered: [{ background: "rgb(164, 44, 44)" }] }}
          value="### Marketing Analytics Tool"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Include src="./filtersContainer.rsx" />
    <Container
      id="metricsContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="96842" viewKey="View 1">
        <Statistic
          id="statistic1"
          currency="USD"
          formattingStyle="percent"
          label="Gross volume"
          labelCaption="{{ dateRange1.value.end }} to {{ dateRange1.value.start }}"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="{{ completionRate.value - .4 }}"
          showSeparators={true}
          value="{{ completionRate.value }}"
        />
      </View>
    </Container>
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### User sessions"
          verticalAlign="center"
        />
      </Header>
      <View id="96842" viewKey="View 1">
        <Table
          id="table2"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ filteredData.value }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="bdf2a"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="bdf2a"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={31.53125}
            summaryAggregationMode="none"
          />
          <Column
            id="6b865"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="user_region"
            label="User region"
            placeholder="Select option"
            position="center"
            size={115}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="32936"
            alignment="left"
            format="button"
            formatOptions={{ variant: "solid" }}
            groupAggregationMode="none"
            label="Action"
            placeholder="Enter value"
            position="center"
            referenceId="action"
            size={100}
            summaryAggregationMode="none"
            valueOverride="Action"
          >
            <Event
              event="clickCell"
              method="show"
              pluginId="drawerFrame1"
              type="widget"
              waitMs={0}
              waitType="debounce"
            />
          </Column>
          <Column
            id="50afb"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="user_id"
            label="User ID"
            placeholder="Enter value"
            position="center"
            size={278.390625}
            summaryAggregationMode="none"
          />
          <Column
            id="be231"
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
            size={67.03125}
            summaryAggregationMode="none"
          />
          <Column
            id="86ea5"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="watch_time"
            label="Watch time"
            placeholder="Enter value"
            position="center"
            size={79.578125}
            summaryAggregationMode="none"
          />
          <Column
            id="40570"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="content_id"
            label="Content ID"
            placeholder="Enter value"
            position="center"
            size={279.265625}
            summaryAggregationMode="none"
          />
          <Column
            id="cbea2"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="content_type"
            label="Content type"
            placeholder="Select option"
            position="center"
            size={108.3125}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="883a9"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="timestamp"
            label="Timestamp"
            placeholder="Enter value"
            position="center"
            size={154.859375}
            summaryAggregationMode="none"
          />
          <Column
            id="b3ee6"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="device_type"
            label="Device type"
            placeholder="Select option"
            position="center"
            size={85.234375}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="f82f7"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="subscription_type"
            label="Subscription type"
            placeholder="Select option"
            position="center"
            size={115.71875}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="bba01"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="engagement_level"
            label="Engagement level"
            placeholder="Select option"
            position="center"
            size={116.609375}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="a5264"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="total_sessions"
            label="Total sessions"
            placeholder="Enter value"
            position="center"
            size={96.328125}
            summaryAggregationMode="none"
          />
          <Column
            id="7a63a"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="avg_session_duration"
            label="Avg session duration"
            placeholder="Enter value"
            position="center"
            size={133.609375}
            summaryAggregationMode="none"
          />
          <Column
            id="51c6e"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="total_watch_time"
            label="Total watch time"
            placeholder="Enter value"
            position="center"
            size={109.8125}
            summaryAggregationMode="none"
          />
          <Column
            id="78801"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="preferred_genre"
            label="Preferred genre"
            placeholder="Select option"
            position="center"
            size={108.3125}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="d3591"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="favorite_actor"
            label="Favorite actor"
            placeholder="Select option"
            position="center"
            size={140.984375}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="0f7c8"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="last_login_date"
            label="Last login date"
            placeholder="Enter value"
            position="center"
            size={152.25}
            summaryAggregationMode="none"
          />
          <Column
            id="f9c37"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="is_subscriber"
            label="Is subscriber"
            placeholder="Select option"
            position="center"
            size={88.65625}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="157e4"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="risk_level"
            label="Risk level"
            placeholder="Select option"
            position="center"
            size={77.3125}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="ffeba"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="recommended_intervention"
            label="Recommended intervention"
            placeholder="Enter value"
            position="center"
            size={306.328125}
            summaryAggregationMode="none"
          />
          <Column
            id="ecbd4"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            key="email"
            label="Email"
            position="center"
            size={131.109375}
            summaryAggregationMode="none"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Action id="e30fb" icon="bold/interface-edit-pencil" label="Action 1">
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="drawerFrame1"
              type="widget"
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
              pluginId="table2"
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
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle5"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="96842" viewKey="View 1" />
    </Container>
  </Frame>
</Screen>
