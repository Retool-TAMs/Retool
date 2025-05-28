<DrawerFrame
  id="taskDrawer"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text
      id="taskDetails"
      value="### Task: interventions needed for tailored content marketing"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton2"
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
        pluginId="taskDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="container10"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle10"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="8f313" viewKey="View 1">
        <Text
          id="text8"
          value="The following email interventions are ready for your review. If any intervention is needed, you can edit the email **subject** or **body**. 
When complete, approve your interventions."
          verticalAlign="center"
        />
        <ListViewBeta
          id="listView1"
          _primaryKeys="{{ i }}"
          data="{{ formatDataAsArray(getSingleUserTask.data.data.context) }}"
          itemWidth="200px"
          numColumns={3}
          padding="12px"
        >
          <Container
            id="container9"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
            showHeader={true}
            style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
          >
            <Header>
              <Text
                id="containerTitle9"
                value="#### Intervention {{ i + 1 }}"
                verticalAlign="center"
              />
            </Header>
            <View id="dfac4" viewKey="View 1">
              <EditableText
                id="editableText1"
                editIcon="bold/interface-edit-write-1"
                inputTooltip="`Enter` to save, `Esc` to cancel"
                label="Email subject"
                labelPosition="top"
                placeholder="Enter value"
                value="{{ item[0] }}"
              />
              <EditableTextArea
                id="editableText2"
                editIcon="bold/interface-edit-write-1"
                inputTooltip="`Enter` to save, `Esc` to cancel"
                label="Email body"
                labelPosition="top"
                placeholder="Enter value"
                value="{{ item[1] }}"
              />
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
  </Body>
  <Footer>
    <Button id="button2" text="Approve">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="submitUserTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="taskDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</DrawerFrame>
