<Container
  id="metricsContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  overflowType="hidden"
  padding="12px"
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimaryBorder" }] }}
>
  <Header>
    <Text id="title" value="#### metrics" verticalAlign="center" />
  </Header>
  <View id="976c1" viewKey="View 1">
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ background: "#0d3b66" }] }}
    >
      <Header>
        <Text
          id="text2"
          value="##### Average Watch Time"
          verticalAlign="center"
        />
      </Header>
      <View id="ef7b1" viewKey="View 1">
        <Statistic
          id="statistic1"
          currency="USD"
          label=""
          labelCaption="minutes"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="{{ (randomNum.value/100).toFixed(4) }}"
          showSeparators={true}
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="{{ (averageWatchTime.value) }}"
        />
        <Statistic
          id="statistic9"
          currency="USD"
          label=""
          labelCaption="hours"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="{{ (randomNum.value/100).toFixed(4) }}"
          showSeparators={true}
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="{{ (averageWatchTime.value / 60).toFixed(1)}}"
        />
      </View>
    </Container>
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ background: "#0d3b66" }] }}
    >
      <Header>
        <Text
          id="text3"
          value="##### Content Completion Rate"
          verticalAlign="center"
        />
      </Header>
      <View id="ef7b1" viewKey="View 1">
        <Statistic
          id="statistic7"
          currency="USD"
          formattingStyle="percent"
          label=""
          labelCaption=" "
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="{{ (randomNum2.value/100).toFixed(4) }}"
          showSeparators={true}
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="{{ contentCompletionRate.value }}"
        />
      </View>
    </Container>
    <Container
      id="container1"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ background: "#0d3b66" }] }}
    >
      <Header>
        <Text
          id="text1"
          value="##### Engagement Rate Distribution"
          verticalAlign="center"
        />
      </Header>
      <View id="22053" viewKey="View 1">
        <Statistic
          id="statistic4"
          currency="USD"
          label="High"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="{{ engagementRate.value.High }}"
        />
        <Statistic
          id="statistic5"
          currency="USD"
          label="Low"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="{{ engagementRate.value.Low }}"
        />
        <Statistic
          id="statistic6"
          currency="USD"
          label="Medium"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="{{ engagementRate.value.Medium }}"
        />
      </View>
    </Container>
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ background: "#0d3b66" }] }}
    >
      <Header>
        <Text id="text4" value="##### Unique sessions" verticalAlign="center" />
      </Header>
      <View id="ef7b1" viewKey="View 1">
        <Statistic
          id="statistic8"
          currency="USD"
          label=""
          labelCaption=" "
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue="{{ (-randomNum2.value/2/100).toFixed(4) }}"
          showSeparators={true}
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="{{ filteredData.value.length }}"
        />
      </View>
    </Container>
  </View>
</Container>
