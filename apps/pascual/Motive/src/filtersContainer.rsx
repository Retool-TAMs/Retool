<Container
  id="filtersContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle2"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="96842" viewKey="View 1">
    <SegmentedControl
      id="segmentedControl1"
      itemMode="static"
      label=""
      labelPosition="top"
      paddingType="spacious"
      value="{{ self.values[0] }}"
    >
      <Option id="bcc89" value="Custom" />
      <Option id="96a7a" value="Last month" />
      <Option
        id="54b07"
        disabled={false}
        iconPosition="left"
        value="Last week"
      />
    </SegmentedControl>
    <DateRange
      id="dateRange1"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      label=""
      labelPosition="top"
      startPlaceholder="Start date"
      textBetween="-"
      value={{ ordered: [{ start: "" }, { end: "" }] }}
    />
    <RangeSlider
      id="rangeSlider1"
      label="User age"
      labelPosition="top"
      max={10}
      step={1}
      value={{ ordered: [{ start: 1 }, { end: 4 }] }}
    />
    <Multiselect
      id="regionSelect"
      data="{{ regionFilter.data }}"
      emptyMessage="No options"
      label="Region"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.user_region }}"
      wrapTags={true}
    />
    <Multiselect
      id="multiselect2"
      emptyMessage="No options"
      itemMode="static"
      label="Content type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      wrapTags={true}
    >
      <Option id="1537a" value="Option 1" />
      <Option id="8c2ff" value="Option 2" />
      <Option id="6b453" value="Option 3" />
    </Multiselect>
    <Multiselect
      id="multiselect3"
      emptyMessage="No options"
      itemMode="static"
      label="Device type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      wrapTags={true}
    >
      <Option id="1537a" value="Option 1" />
      <Option id="8c2ff" value="Option 2" />
      <Option id="6b453" value="Option 3" />
    </Multiselect>
  </View>
</Container>
