<DrawerFrame
  id="sessionDetailsDrawer"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text
      id="drawerTitle1"
      value="### Session #{{ sessionEventsTable.selectedRow.id }}"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="sessionDetailsDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <KeyValue
      id="keyValue1"
      data="{{ sessionEventsTable.selectedRow }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="ID"
      />
      <Property
        id="user_id"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="User ID"
      />
      <Property
        id="content_id"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Content ID"
      />
      <Property
        id="timestamp"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Timestamp"
      />
      <Property
        id="content_type"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Content type"
      />
      <Property
        id="watch_time"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Watch time"
      />
      <Property
        id="user_age"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="User age"
      />
      <Property
        id="user_region"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="User region"
      />
      <Property
        id="device_type"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Device type"
      />
      <Property
        id="subscription_type"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Subscription type"
      />
      <Property
        id="engagement_level"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Engagement level"
      />
      <Property
        id="total_sessions"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Total sessions"
      />
      <Property
        id="avg_session_duration"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Avg session duration"
      />
      <Property
        id="total_watch_time"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Total watch time"
      />
      <Property
        id="preferred_genre"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Preferred genre"
      />
      <Property
        id="favorite_actor"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Favorite actor"
      />
      <Property
        id="last_login_date"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Last login date"
      />
      <Property
        id="is_subscriber"
        editable="false"
        editableOptions={{}}
        format="boolean"
        formatOptions={{}}
        hidden="false"
        label="Is subscriber"
      />
      <Property
        id="risk_level"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Risk level"
      />
      <Property
        id="recommended_intervention"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Recommended intervention"
      />
      <Property
        id="intervention"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Intervention"
      />
    </KeyValue>
    <Include src="./collapsibleContainer1.rsx" />
  </Body>
</DrawerFrame>
