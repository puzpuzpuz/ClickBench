CREATE TABLE hits
(
    WatchID long,
    JavaEnable byte,
    Title string,
    GoodEvent byte,
    EventTime timestamp,
    Eventdate timestamp,
    CounterID int,
    ClientIP int,
    RegionID int,
    UserID long,
    CounterClass byte,
    OS short,
    UserAgent short,
    URL string,
    Referer string,
    IsRefresh byte,
    RefererCategoryID short,
    RefererRegionID int,
    URLCategoryID short,
    URLRegionID int,
    ResolutionWidth short,
    ResolutionHeight short,
    ResolutionDepth short,
    FlashMajor byte,
    FlashMinor byte,
    FlashMinor2 symbol,
    NetMajor byte,
    NetMinor byte,
    UserAgentMajor short,
    UserAgentMinor symbol,
    CookieEnable byte,
    JavascriptEnable byte,
    IsMobile byte,
    MobilePhone short,
    MobilePhoneModel symbol,
    Params string,
    IPNetworkID int,
    TraficSourceID int,
    SearchEngineID short,
    SearchPhrase string,
    AdvEngineID short,
    IsArtifical byte,
    WindowClientWidth short,
    WindowClientHeight short,
    ClientTimeZone short,
    ClientEventTime timestamp,
    SilverlightVersion1 byte,
    SilverlightVersion2 byte,
    SilverlightVersion3 short,
    SilverlightVersion4 byte,
    PageCharset symbol,
    CodeVersion short,
    IsLink byte,
    IsDownload byte,
    IsNotBounce byte,
    FUniqID long,
    OriginalURL string,
    HID int,
    IsOldCounter byte,
    IsEvent byte,
    IsParameter byte,
    DontCountHits byte,
    WithHash byte,
    HitColor char,
    LocalEventTime timestamp,
    Age byte,
    Sex byte,
    Income byte,
    Interests short,
    Robotness short,
    RemoteIP int,
    WindowName int,
    OpenerName int,
    HistoryLength short,
    BrowserLanguage symbol,
    BrowserCountry symbol,
    SocialNetwork symbol,
    SocialAction symbol,
    HTTPError byte,
    SendTiming int,
    DNSTiming int,
    ConnectTiming int,
    ResponseStartTiming int,
    ResponseEndTiming int,
    FetchTiming int,
    SocialSourceNetworkID short,
    SocialSourcePage string,
    ParamPrice long,
    ParamOrderID symbol,
    ParamCurrency symbol,
    ParamCurrencyID short,
    OpenstatServiceName symbol,
    OpenstatCampaignID symbol,
    OpenstatAdID string,
    OpenstatSourceID symbol,
    UTMSource symbol,
    UTMMedium symbol,
    UTMCampaign symbol,
    UTMContent symbol,
    UTMTerm symbol,
    FromTag symbol,
    HasGCLID byte,
    RefererHash long,
    URLHash long,
    CLID int
) TIMESTAMP(EventTime) PARTITION BY DAY;
