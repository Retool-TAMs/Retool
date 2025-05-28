<Screen
  id="marketing"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Default Page"
  urlSlug=""
>
  <Folder id="email">
    <SMTPQuery
      id="interventionEmail"
      body="{{ editableContent.value }}"
      isHidden={false}
      notificationDuration={4.5}
      resourceName="retool_email"
      showSuccessToaster={false}
      subject="{{ editableSubject.value }}"
      toEmail="pascual@retool.com"
    >
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="sessionDetailsDrawer"
        type="widget"
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
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Email sent" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "Email failed" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </SMTPQuery>
    <RetoolAIQuery
      id="interventionRecommendationContent"
      customSystemMessage={
        'Using the data provided, write a brief and creative email (only content, no subject). The goal of the email is determined by the field recommended_intervention. The closing should be "HuluNet+ Team". Do not use placeholders such as [User].'
      }
      defaultModelInitialized={true}
      instruction="{{ sessionEventsTable.selectedRow }}"
      isHidden={false}
      isMultiplayerEdited={false}
      metadata={null}
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
    />
    <RetoolAIQuery
      id="interventionRecommendationSubject"
      attachment={[]}
      bccEmail=""
      body=""
      bodyType="text"
      ccEmail=""
      customSystemMessage={
        'Using the data provided, write a brief and creative (with pure text or text and emoji - max 1 emoji)) subject line for an email. \n\nThe goal of the email is determined by the field recommended_intervention. \n\nDo not use placeholders such as [User].\n\nDo not add "" at start or end.'
      }
      defaultModelInitialized={true}
      fromEmail=""
      instruction="{{ sessionEventsTable.selectedRow }}"
      isHidden={false}
      metadata={null}
      replyToEmail=""
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      resourceTypeOverride=""
      showCcBcc={false}
      showReplyTo={false}
      subject=""
      toEmail=""
    />
  </Folder>
  <Folder id="metrics">
    <Function
      id="contentCompletionRate"
      funcBody={include("../lib/contentCompletionRate.js", "string")}
    />
    <Function
      id="averageWatchTime"
      funcBody={include("../lib/averageWatchTime.js", "string")}
    />
    <Function
      id="engagementRate"
      funcBody={include("../lib/engagementRate.js", "string")}
    />
  </Folder>
  <Folder id="charts">
    <Function
      id="chartWatchTimeUsers"
      funcBody={include("../lib/chartWatchTimeUsers.js", "string")}
    />
    <Function
      id="chartSessionsWeekly"
      funcBody={include("../lib/chartSessionsWeekly.js", "string")}
    />
    <Function
      id="chartSessionsDaily"
      funcBody={include("../lib/chartSessionsDaily.js", "string")}
    />
    <Function
      id="chartSessionsQuarterly"
      funcBody={include("../lib/chartSessionsQuarterly.js", "string")}
    />
    <Function
      id="chartWatchTimeContent"
      funcBody={include("../lib/chartWatchTimeContent.js", "string")}
    />
    <Function
      id="chartEngagementRegion"
      funcBody={include("../lib/chartEngagementRegion.js", "string")}
    />
    <Function
      id="chartSessionsMonthly"
      funcBody={include("../lib/chartSessionsMonthly.js", "string")}
    />
    <State id="itemToChart" value="{{ chartSessionsDaily.value }}" />
  </Folder>
  <Folder id="misc">
    <JavascriptQuery
      id="getLastWeekStartDate"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getLastWeekStartDate.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="getLastMonthStartDate"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getLastMonthStartDate.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="selectedTaskID" value="{{ tasksTable.selectedRow.id }}" />
    <Function
      id="randomNum2"
      funcBody={include("../lib/randomNum2.js", "string")}
    />
    <JavascriptQuery
      id="getLastSixMonthsStartDate"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/getLastSixMonthsStartDate.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="randomNum"
      funcBody={include("../lib/randomNum.js", "string")}
    />
  </Folder>
  <Folder id="resources">
    <Function
      id="filteredData"
      funcBody={include("../lib/filteredData.js", "string")}
    />
    <SqlQueryUnified
      id="rawData"
      cacheKeyTtl={300}
      enableCaching={true}
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("../lib/rawData.sql", "string")}
      queryRefreshTime="5000"
      resourceDisplayName="retool_db"
      resourceName="b32a9280-ef49-4b13-a3bd-64d1ed97c8a6"
      warningCodes={[]}
    />
    <JavascriptQuery
      id="query2"
      notificationDuration={4.5}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="tasks">
    <RetoolUserActionQuery
      id="getUserTasks"
      _componentId={null}
      actionCategory="userTask"
      actionType="get_tasks"
      isHidden={false}
      resourceName="RetoolUserAction"
      runWhenPageLoads="true"
      selectedStatuses={'["pending"]'}
      selectedUserTaskDefinitionIds={'["cc712933-e2bb-45a7-ad88-f5a97e989f27"]'}
      selectedWorkflowIds={'["1cdf5e6b-e772-4ffe-97ec-250fe6e7333c"]'}
    />
    <RetoolUserActionQuery
      id="getSingleUserTask"
      _componentId={null}
      actionCategory="userTask"
      actionType="get_task"
      isHidden={false}
      resourceName="RetoolUserAction"
      userTaskInstanceId="{{ selectedTaskID.value }}"
    />
    <RetoolUserActionQuery
      id="submitUserTask"
      _componentId={null}
      actionCategory="userTask"
      actionType="complete_task"
      isHidden={false}
      isMultiplayerEdited={false}
      outputPayload={
        '{\n"decision": "approved",\n"to": "pascual@retool.com",\n"content": {{ listView1.data }}\n}'
      }
      resourceName="RetoolUserAction"
      userTaskInstanceId="{{ tasksTable.selectedRow.id }}"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUserTasks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Email interventions sent" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
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
      <Event
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "Email interventions failed" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </RetoolUserActionQuery>
  </Folder>
  <Folder id="filters">
    <SqlTransformQuery
      id="userMaxAgeFilter"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("../lib/userMaxAgeFilter.sql", "string")}
      resourceName="SQL Transforms"
    />
    <SqlTransformQuery
      id="userRegionFilter"
      isHidden={false}
      query={include("../lib/userRegionFilter.sql", "string")}
      resourceName="SQL Transforms"
    />
    <SqlTransformQuery
      id="userMinAgeFilter"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("../lib/userMinAgeFilter.sql", "string")}
      resourceName="SQL Transforms"
    />
    <SqlTransformQuery
      id="contentTypeFilter"
      isHidden={false}
      notificationDuration={4.5}
      query={include("../lib/contentTypeFilter.sql", "string")}
      resourceName="SQL Transforms"
      showSuccessToaster={false}
    />
    <SqlTransformQuery
      id="deviceTypeFilter"
      isHidden={false}
      query={include("../lib/deviceTypeFilter.sql", "string")}
      resourceName="SQL Transforms"
    />
  </Folder>
  <Include src="./sessionDetailsDrawer.rsx" />
  <Include src="./taskDrawer.rsx" />
  <Frame
    id="$main"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Include src="./marketingMain.rsx" />
  </Frame>
</Screen>
