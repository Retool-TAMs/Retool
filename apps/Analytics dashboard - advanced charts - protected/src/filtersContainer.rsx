<Container
  id="filtersContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  padding="12px"
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
>
  <Header>
    <Text id="containerTitle3" value="#### filters" verticalAlign="center" />
  </Header>
  <View id="976c1" viewKey="View 1">
    <SegmentedControl
      id="segmentedControl1"
      itemMode="static"
      label=""
      labelPosition="top"
      paddingType="spacious"
      value="{{ self.values[0] }}"
    >
      <Option
        id="8c55e"
        disabled={false}
        iconPosition="left"
        label="Custom"
        value="custom"
      />
      <Option id="774bc" label="Last month" value="month" />
      <Option id="68eaf" label="Last week" value="week" />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getLastWeekStartDate"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getLastMonthStartDate"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SegmentedControl>
    <DateRange
      id="dateRange1"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      hidden=""
      iconBefore="bold/interface-calendar-remove"
      label=""
      labelPosition="top"
      maintainSpaceWhenHidden={true}
      startPlaceholder="Start date"
      textBetween="-"
      value={{
        ordered: [
          {
            start:
              '{{ segmentedControl1.value === "week" ? getLastWeekStartDate.data : segmentedControl1.value === "month" ? getLastMonthStartDate.data :  "2024-01-01" }}',
          },
          { end: "{{  new Date() }}" },
        ],
      }}
    />
    <RangeSlider
      id="userAgeSlider"
      label="User Age"
      labelPosition="top"
      max="{{ userMaxAgeFilter.data[0].max }}"
      min="{{ userMinAgeFilter.data[0].min }}"
      step={1}
      style={{ ordered: [{ accent: "#0d3b66" }] }}
      value={{ ordered: [{ start: "18" }, { end: "100" }] }}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="rawData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="rawData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RangeSlider>
    <Multiselect
      id="regionSelect"
      data="{{ userRegionFilter.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Filter by region"
      showSelectionIndicator={true}
      values={'{{ item["(user_region)"] }}'}
      wrapTags={true}
    />
    <Multiselect
      id="contentSelect"
      data="{{ contentTypeFilter.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Filter by content type"
      showSelectionIndicator={true}
      values={'{{ item["(content_type)"] }}'}
      wrapTags={true}
    />
    <Multiselect
      id="deviceSelect"
      data="{{ deviceTypeFilter.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Filter by device type"
      showSelectionIndicator={true}
      values={'{{ item["(device_type)"] }}'}
      wrapTags={true}
    />
  </View>
</Container>
