<Container
  id="collapsibleContainer1"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  maintainSpaceWhenHidden={true}
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle1"
      tooltipText="Get in touch with this user and get them excited about HuluNet+!"
      value="#### 📩 Send an email intervention"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle1"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer1.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="3d29c" viewKey="View 1">
    <Text
      id="text5"
      value="💡 **Below is a recommended email intervention based on this user's activity on HuluNet+. 
Edit the email's subject or body as you deem appropriate.**
Note: this email is AI ✨ generated, you can try again using the magic wand on the right"
      verticalAlign="center"
    />
    <Icon
      id="icon1"
      horizontalAlign="center"
      icon="bold/interface-edit-magic-wand"
      style={{ ordered: [{ color: "primary" }] }}
      tooltipText="Create a new email"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="interventionRecommendationContent"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="interventionRecommendationSubject"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Icon>
    <EditableTextArea
      id="editableSubject"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Subject"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ interventionRecommendationSubject.data }}"
    />
    <EditableTextArea
      id="editableContent"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Body"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ interventionRecommendationContent.data }}"
    />
    <Button
      id="button1"
      disabled="{{ interventionRecommendationContent.isFetching || interventionRecommendationSubject.isFetching }}"
      text="Send Email"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="interventionEmail"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
