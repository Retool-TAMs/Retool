<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyi0K_FxR0wFKEN0a48mydafOvX2kQhbwEug&s"
    />
    <Text
      id="text1"
      horizontalAlign="center"
      imageWidth="fill"
      style={{
        ordered: [
          { color: "rgba(255, 52, 52, 0.92)" },
          { background: "rgba(109, 111, 108, 0.28)" },
        ],
      }}
      value="### Fraud Lost for Selected Period: ${{ potentialFraudDollars.value }}"
      verticalAlign="center"
    />
    <Text
      id="text2"
      horizontalAlign="center"
      style={{
        ordered: [
          { color: "rgba(12, 5, 150, 1)" },
          { background: "rgba(0, 0, 0, 0.15)" },
        ],
      }}
      value="### # Fraudulent Returns for Selected Period: {{ potentialFraudReturns.value }}"
      verticalAlign="center"
    />
    <DateRange
      id="dateRange1"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      label="Filter By Date"
      labelPosition="top"
      startPlaceholder="Start date"
      style={{
        ordered: [
          { requiredIndicator: "highlight" },
          { accent: "rgba(149, 0, 255, 0.83)" },
          { text: "rgba(7, 7, 7, 1)" },
        ],
      }}
      textBetween="-"
      value={{ ordered: [{ start: "" }, { end: "" }] }}
    >
      <Event
        event="change"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="filter"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getTransactions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </DateRange>
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ filter.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { columnId: "" },
            { operator: "includes" },
            { value: "" },
            { id: "da504" },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount=""
      overflowType="pagination"
      searchTerm="{{textInput1.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{
        border: "primary",
        background: "rgba(245, 245, 245, 0.12)",
        accent: "rgba(148, 50, 250, 1)",
        filterBackground: "rgba(245, 245, 245, 0.22)",
      }}
      templatePageSize="20"
      toolbarPosition="bottom"
    >
      <Column
        id="e942d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="transaction_type"
        label="Transaction type"
        placeholder="Select option"
        position="center"
        size={90.015625}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a2c43"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
      />
      <Column
        id="d2543"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="customer_id"
        label="Customer ID"
        placeholder="Enter value"
        position="center"
        size={86.484375}
      />
      <Column
        id="b1188"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="transaction_id"
        label="Transaction ID"
        placeholder="Enter value"
        position="center"
        size={111.578125}
      />
      <Column
        id="b41c9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="product_id"
        label="Product ID"
        placeholder="Enter value"
        position="center"
        size={85.6875}
      />
      <Column
        id="e42ee"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="store_location"
        label="Store location"
        placeholder="Select option"
        position="center"
        size={122.859375}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e94c4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="quantity"
        label="Quantity"
        placeholder="Enter value"
        position="center"
        size={76.15625}
      />
      <Column
        id="39f11"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="price_per_unit"
        label="Price per unit"
        placeholder="Enter value"
        position="center"
        size={108.34375}
      />
      <Column
        id="78388"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="total_price"
        label="Total price"
        placeholder="Enter value"
        position="center"
        size={77.578125}
      />
      <Column
        id="63bda"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="transaction_date"
        label="Transaction date"
        placeholder="Enter value"
        position="center"
        size={146.75}
      />
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="changePage"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="filter"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <PlotlyChart
      id="chart1"
      data={include("./lib/chart1.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "Returns" },
                {
                  datasource: "{{formatDataAsObject(chartReturns.value)['y']}}",
                },
                { chartType: "bar" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="array"
      datasourceJS="{{chartReturns.value}}"
      datasourcePluginId="chartReturns"
      datasourcePluginType="function"
      isDataTemplateDirty={true}
      legendAlignment="right"
      maintainSpaceWhenHidden={true}
      margin="0"
      showInEditor={true}
      skipDatasourceUpdate={true}
      title="Returns by Day"
      xAxis="{{formatDataAsObject(chartReturns.value).x}}"
      xAxisDropdown="x"
      xAxisTitle="Day"
      xAxisType="date"
      yAxisTitle="Price of Return"
    />
    <TextInput id="textInput1" labelPosition="top" placeholder="Enter value" />
    <Button id="button1" text="Button" />
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
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="e7b7c" viewKey="View 1" />
      <View
        id="e4864"
        disabled={false}
        hidden={false}
        iconPosition="left"
        viewKey="View 2"
      />
    </Container>
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getTransactions.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="d16ef"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d16ef"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="edb25"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="customer_id"
        label="Customer ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a3c36"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="transaction_id"
        label="Transaction ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4a591"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="product_id"
        label="Product ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b8333"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="quantity"
        label="Quantity"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e209c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="price_per_unit"
        label="Price per unit"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="fc774"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="total_price"
        label="Total price"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7710a"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="transaction_date"
        label="Transaction date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="082b7"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="store_location"
        label="Store location"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f5514"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="transaction_type"
        label="Transaction type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
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
  </Frame>
</App>
