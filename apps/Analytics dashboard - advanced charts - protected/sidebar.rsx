<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  width="large"
>
  <Header>
    <Image
      id="image1"
      dbBlobId="a9ff09de-a596-4e6c-81d8-3700964afaa6"
      fit="contain"
      heightType="fixed"
      retoolStorageFileId="ab666acd-950a-4c13-a3d5-7afb59a0e31b"
      srcType="dbBlobId"
    />
  </Header>
  <Body>
    <Navigation
      id="navigation1"
      appTargetByIndex=""
      captionByIndex=""
      data=""
      disabledByIndex=""
      hiddenByIndex=""
      highlightByIndex=""
      iconByIndex=""
      iconPositionByIndex=""
      itemMode="static"
      itemTypeByIndex=""
      keyByIndex=""
      labels=""
      orientation="vertical"
      parentKeyByIndex=""
      screenTargetByIndex=""
      screenTargetIdByIndex=""
      src={null}
      srcType={null}
      tooltipByIndex=""
    >
      <Option
        id="aded8"
        icon="line/interface-content-chart"
        iconPosition="left"
        itemType="page"
        label="Insights"
        screenTargetId="marketing"
      />
      <Option
        id="5b993"
        icon="line/interface-file-sticky-note"
        iconPosition="left"
        itemType="page"
        label="Reports"
        screenTargetId="reports"
      />
      <Option
        id="a03ea"
        icon="line/interface-setting-cog"
        iconPosition="left"
        itemType="app"
        label="Settings"
      />
      <Option
        id="76b9e"
        appTarget="3901bc3e-e5a8-11ef-a45b-2fb877c3f5fa"
        disabled={false}
        iconPosition="left"
        itemType="app"
        label="Admin App"
        screenTargetId="admin"
      />
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "{{ item.id }}" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
