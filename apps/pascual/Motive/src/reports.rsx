<Screen
  id="reports"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="form1SubmitToAnalyticsDashUpdated"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ form1.data }}"
    editorMode="gui"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="9431eee3-e7f1-4d8c-98ca-0fdeffc491b9"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="analytics_dash_updated"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextArea
          id="textArea1"
          autoResize={true}
          formDataKey="preferred_genre"
          label="Preferred genre"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="numberInput1"
          currency="USD"
          formDataKey="user_age"
          inputValue={0}
          label="User age"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextArea
          id="textArea2"
          autoResize={true}
          formDataKey="recommended_intervention"
          label="Recommended intervention"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <DateTime
          id="dateTime1"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="timestamp"
          iconBefore="bold/interface-calendar"
          label="Timestamp"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <TextArea
          id="textArea3"
          autoResize={true}
          formDataKey="device_type"
          label="Device type"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="numberInput2"
          currency="USD"
          formDataKey="total_watch_time"
          inputValue={0}
          label="Total watch time"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <NumberInput
          id="numberInput3"
          currency="USD"
          formDataKey="id"
          inputValue={0}
          label="ID"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextArea
          id="textArea4"
          autoResize={true}
          formDataKey="risk_level"
          label="Risk level"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea5"
          autoResize={true}
          formDataKey="user_region"
          label="User region"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="numberInput4"
          currency="USD"
          formDataKey="avg_session_duration"
          inputValue={0}
          label="Avg session duration"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextArea
          id="textArea6"
          autoResize={true}
          formDataKey="favorite_actor"
          label="Favorite actor"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <DateTime
          id="dateTime2"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="last_login_date"
          iconBefore="bold/interface-calendar"
          label="Last login date"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <TextArea
          id="textArea7"
          autoResize={true}
          formDataKey="engagement_level"
          label="Engagement level"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea8"
          autoResize={true}
          formDataKey="content_id"
          label="Content ID"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="numberInput5"
          currency="USD"
          formDataKey="watch_time"
          inputValue={0}
          label="Watch time"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextInput
          id="textInput1"
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          labelPosition="top"
          patternType="email"
          placeholder="you@example.com"
          required={true}
        />
        <TextArea
          id="textArea9"
          autoResize={true}
          formDataKey="user_id"
          label="User ID"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea10"
          autoResize={true}
          formDataKey="subscription_type"
          label="Subscription type"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <NumberInput
          id="numberInput6"
          currency="USD"
          formDataKey="total_sessions"
          inputValue={0}
          label="Total sessions"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextArea
          id="textArea11"
          autoResize={true}
          formDataKey="is_subscriber"
          label="Is subscriber"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea12"
          autoResize={true}
          formDataKey="content_type"
          label="Content type"
          minLines={2}
          placeholder="Enter value"
          required={true}
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
        params={{ ordered: [] }}
        pluginId="form1SubmitToAnalyticsDashUpdated"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</Screen>
