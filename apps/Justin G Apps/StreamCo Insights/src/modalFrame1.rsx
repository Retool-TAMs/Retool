<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Pending Interventions"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      allowWrap={true}
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
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Table
      id="interventionsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUserTasks.data.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      primaryKeyColumnId="82304"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="82304"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="dcaa9"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="workflowName"
        label="Workflow name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3e269"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="aa45d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4248e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="taskName"
        label="Task name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4c7bc"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="workflowId"
        label="Workflow ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="37391"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="workflowRunId"
        label="Workflow run ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="32f59"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="context"
        label="Context"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ getUserTasks.data}}"
      />
      <Column
        id="62b1d"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="userTaskLink"
        label="User task link"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="2b695"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="assignees"
        label="Assignees"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ab9e1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="workflowRelease"
        label="Workflow release"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="18c5b"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="expiresAt"
        label="Expires at"
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
          pluginId="interventionsTable"
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
          pluginId="interventionsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Form
      id="approvalForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle1" verticalAlign="center" />
      </Header>
      <Body>
        <Checkbox id="approvalFormCheckbox" label="Approve" labelWidth="100" />
      </Body>
      <Footer>
        <Button
          id="approvalFormSubmit"
          allowWrap={true}
          style={{ ordered: [{ background: "#0f8c58" }] }}
          submit={true}
          submitTargetId="approvalForm"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="submitUserTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUserTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="approvalFormCheckbox"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Email Preview"
          verticalAlign="center"
        />
      </Header>
      <View id="e5092" viewKey="View 1">
        <Text
          id="emailPreviewText"
          heightType="fixed"
          style={{ ordered: [{ background: "rgba(0, 0, 0, 0.04)" }] }}
          value="{{ interventionsTable.selectedRow.context.data[0].context.review[2].newEmail }}"
          verticalAlign="center"
        />
      </View>
    </Container>
  </Body>
</ModalFrame>
