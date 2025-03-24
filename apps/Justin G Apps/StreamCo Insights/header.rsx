<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  style={{ ordered: [{ "primary-surface": "rgba(0, 0, 0, 0.07)" }] }}
  type="header"
>
  <Text
    id="appTitle"
    heightType="fixed"
    horizontalAlign="center"
    imageWidth="fill"
    style={{
      ordered: [
        { fontSize: "h4Font" },
        { fontWeight: "h4Font" },
        { fontFamily: "h4Font" },
      ],
    }}
    value="**StreamCo Insights**"
    verticalAlign="center"
  />
  <Navigation
    id="navigation1"
    data="{{ retoolContext.pages }}"
    highlightByIndex="{{ retoolContext.currentPage === item.id }}"
    labels="{{ item.title || item.id }}"
    parentKeyByIndex=""
    retoolFileObject={'{{ "hello" }}'}
    src="https://img.freepik.com/premium-psd/bar-graph-icon-transparent-background_1195761-9881.jpg"
    style={{
      ordered: [
        { fontSize: "h5Font" },
        { fontWeight: "h5Font" },
        { fontFamily: "h5Font" },
        { color: "rgba(127, 8, 189, 1)" },
        { highlightText: "#1c07bd" },
      ],
    }}
  >
    <Option id="1cbf0" icon="bold/interface-home-3" label="Home" />
    <Option id="e70a9" icon="bold/interface-user-multiple" label="Customers" />
    <Option id="1a3bd" icon="bold/interface-setting-cog" label="Settings" />
    <Event
      event="click"
      method="openPage"
      params={{
        ordered: [
          { pageName: "{{ item.id }}" },
          { options: { ordered: [{ passDataWith: "urlParams" }] } },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Navigation>
  <Button
    id="interventionsButton"
    style={{ ordered: [{ background: "rgba(15, 163, 102, 1)" }] }}
    text="Approve Intervention"
  >
    <Event
      event="click"
      method="show"
      params={{ ordered: [] }}
      pluginId="modalFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getUserTasks"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Frame>
