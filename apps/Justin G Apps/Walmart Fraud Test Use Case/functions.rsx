<GlobalFunctions>
  <SqlQueryUnified
    id="getTransactions"
    cacheKeyTtl={300}
    enableCaching={true}
    enableTransformer={true}
    isMultiplayerEdited={false}
    offlineOptimisticResponse={null}
    query={include("./lib/getTransactions.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="b32a9280-ef49-4b13-a3bd-64d1ed97c8a6"
    transformer="return formatDataAsArray(data)"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="filter"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <JavascriptQuery
    id="filter"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    offlineOptimisticResponse={null}
    query={include("./lib/filter.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Function
    id="potentialFraudDollars"
    funcBody={include("./lib/potentialFraudDollars.js", "string")}
  />
  <Function
    id="potentialFraudReturns"
    funcBody={include("./lib/potentialFraudReturns.js", "string")}
  />
  <Function
    id="chartReturns"
    funcBody={include("./lib/chartReturns.js", "string")}
  />
</GlobalFunctions>
