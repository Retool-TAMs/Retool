<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Button id="button1" marginType="normal" text="Button" />
    <Button id="button2" text="Button" />
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      label="Data Source"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option
        id="0fbda"
        label="API 1"
        value="4f48c09d-3ce8-45d9-8ebe-b61ed4e57e49"
      />
      <Option id="bb74f" value="0b99f560-48d0-43a1-b351-0e28dc0ecc0b" />
      <Option id="57eeb" value="178e931e-7f6d-494f-aeb2-26333ba8b91e" />
    </Select>
    <JSONExplorer id="jsonExplorer1" value="{{ query1.data }}" />
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
  </Frame>
</App>
