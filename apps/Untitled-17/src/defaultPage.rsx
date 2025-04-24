<Screen
  id="defaultPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <SqlQueryUnified
    id="query1"
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="b32a9280-ef49-4b13-a3bd-64d1ed97c8a6"
    warningCodes={[]}
  />
  <connectResource id="query2" _componentId="select1" />
  <SqlQueryUnified
    id="form1SubmitHandler"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ form1.data }}"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ table1.selectedRow.id }}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="b32a9280-ef49-4b13-a3bd-64d1ed97c8a6"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="sample_users"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="query1"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="12687"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="12687"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b8dd1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="25dad"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="94437"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="signup_date"
        label="Signup date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8e77e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="5ffb3"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="39fa8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="level"
        label="Level"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9c529"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        key="role_options_avail"
        label="Role options avail"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
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
    </Table>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table1.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Update User: {{ table1.selectedRow.name }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select1"
          captionByIndex=""
          data="{{ query1.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          formDataKey="role"
          label="Role"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.role }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
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
        pluginId="form1SubmitHandler"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <FileButton
      id="fileButton1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      maxCount={20}
      maxSize="250mb"
      parseFiles={true}
      styleVariant="outline"
      text="Browse"
    />
  </Frame>
</Screen>
