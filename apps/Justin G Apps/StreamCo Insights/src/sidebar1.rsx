<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  width="large"
>
  <Body>
    <Container
      id="stack4"
      _direction="vertical"
      _gap="10px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <View id="73156" viewKey="View 1">
        <DateRange
          id="dateRange1"
          dateFormat="MMM d, yyyy"
          endPlaceholder="End date"
          iconBefore="bold/interface-calendar-remove"
          label="Filter Data"
          labelPosition="top"
          margin="0"
          startPlaceholder="Start date"
          style={{
            ordered: [
              { sharedLabelFontSize: "h4Font" },
              { sharedLabelFontWeight: "h4Font" },
              { sharedLabelFontFamily: "h4Font" },
            ],
          }}
          textBetween="-"
          value={{ ordered: [{ start: "" }, { end: "" }] }}
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="filter"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </DateRange>
        <Multiselect
          id="userAgeSelect"
          data="{{ filter.data }}"
          emptyMessage="No options"
          label="User Age"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          values="{{ item.user_age }}"
          wrapTags={true}
        />
        <Multiselect
          id="userRegionSelect"
          data="{{ filter.data }}"
          emptyMessage="No options"
          label="User Region"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          values="{{ item.user_region }}"
          wrapTags={true}
        />
        <Multiselect
          id="contentTypeSelect"
          data="{{ filter.data }}"
          emptyMessage="No options"
          label="Content Type"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          values="{{ item.content_type }}"
          wrapTags={true}
        />
      </View>
    </Container>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      clickable={false}
      events={{ ordered: [] }}
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
