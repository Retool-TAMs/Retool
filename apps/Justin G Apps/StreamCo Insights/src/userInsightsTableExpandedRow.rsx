<ExpandedRow id="userInsightsTableExpandedRow">
  <KeyValue
    id="keyValue1"
    data="{{ userInsightsTable.selectedRow }}"
    editIcon="bold/interface-edit-pencil"
    enableSaveActions={true}
    itemLabelPosition="top"
    labelWrap={true}
    style={{ text: "rgba(13, 13, 13, 0.99)" }}
  >
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
      id="id"
      editable="false"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      hidden="true"
      label="ID"
    />
    <Property
      id="user_id"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
      hidden="true"
      label="User ID"
    />
    <Property
      id="timestamp"
      editable="false"
      editableOptions={{}}
      format="datetime"
      formatOptions={{}}
      hidden="true"
      label="Timestamp"
    />
    <Property
      id="content_id"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
      hidden="true"
      label="Content ID"
    />
    <Property
      id="content_type"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
      hidden="true"
      label="Content type"
    />
    <Property
      id="total_watch_time"
      editable="false"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      hidden="true"
      label="Total watch time"
    />
    <Property
      id="avg_session_duration"
      editable="false"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      hidden="true"
      label="Avg session duration"
    />
    <Property
      id="total_sessions"
      editable="false"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      hidden="true"
      label="Total sessions"
    />
    <Property
      id="watch_time"
      editable="false"
      editableOptions={{ showStepper: true }}
      format="decimal"
      formatOptions={{ showSeparators: true, notation: "standard" }}
      hidden="true"
      label="Watch time"
    />
    <Property
      id="user_region"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
      hidden="false"
      label="User region"
    />
    <Property
      id="device_type"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
      hidden="false"
      label="Device type"
    />
    <Property
      id="subscription_type"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
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
      id="preferred_genre"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
      hidden="false"
      label="Preferred genre"
    />
    <Property
      id="favorite_actor"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
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
      formatOptions={{
        trueIcon: "bold/interface-validation-check-circle-alternate",
        trueColor: "rgba(239, 7, 24, 1)",
      }}
      hidden="false"
      label="Is subscriber"
    />
    <Property
      id="risk_level"
      editable="false"
      editableOptions={{}}
      format="tag"
      formatOptions={{ automaticColors: true }}
      hidden="false"
      label="Risk level"
    />
    <Property
      id="recommended_intervention"
      editable="false"
      editableOptions={{}}
      format="string"
      formatOptions={{}}
      hidden="false"
      label="Recommended intervention"
    />
  </KeyValue>
</ExpandedRow>
