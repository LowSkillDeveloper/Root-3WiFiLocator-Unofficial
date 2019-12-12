.class public Lcom/example/WiFiPasswordSearcher/MyActivity;
.super Landroid/app/Activity;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000013;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000014;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000015;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000002;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000003;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;,
        Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;
    }
.end annotation


# static fields
.field public static API_KEYS_VALID:Ljava/lang/Boolean;

.field public static API_READ_KEY:Ljava/lang/String;

.field public static API_WRITE_KEY:Ljava/lang/String;

.field public static APP_VERSION:Ljava/lang/String;

.field public static SERVER_LOGIN:Ljava/lang/String;

.field public static SERVER_PASSWORD:Ljava/lang/String;

.field public static SERVER_URI:Ljava/lang/String;

.field private static ScanInProcess:Z

.field private static ScanWiFiReceiverIntent:Landroid/content/BroadcastReceiver;

.field public static WiFiKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/WiFiPasswordSearcher/APData;",
            ">;"
        }
    .end annotation
.end field

.field public static WiFiList:Landroid/widget/ListView;

.field private static WiFiScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/example/WiFiPasswordSearcher/MyScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

.field private static final listContextMenuItems:[Ljava/lang/String;


# instance fields
.field private LocationMgr:Landroid/location/LocationManager;

.field private User:Lcom/example/WiFiPasswordSearcher/UserManager;

.field public WiFiListOnClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private WifiMgr:Landroid/net/wifi/WifiManager;

.field private btnCheckFromBase:Landroid/widget/Button;

.field private btnCheckFromBaseOnClick:Landroid/view/View$OnClickListener;

.field private btnRefresh:Landroid/widget/Button;

.field private btnSettings:Landroid/widget/ImageButton;

.field private btnSettingsOnClick:Landroid/view/View$OnClickListener;

.field private btnStartGPSLog:Landroid/widget/Button;

.field private btnStartGPSLogOnClick:Landroid/view/View$OnClickListener;

.field protected lastWiFiClickItem:Landroid/widget/LinearLayout;

.field private mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

.field private sClipboard:Landroid/content/ClipboardManager;


# direct methods
.method static final constructor <clinit>()V
    .locals 8

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->APP_VERSION:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->SERVER_LOGIN:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->SERVER_PASSWORD:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->SERVER_URI:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_READ_KEY:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_WRITE_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    move v6, v2

    move-object v7, v3

    move-object v2, v7

    move v3, v6

    move-object v4, v7

    move v6, v3

    move-object v7, v4

    move-object v3, v7

    move v4, v6

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_KEYS_VALID:Ljava/lang/Boolean;

    const/4 v2, 0x0

    check-cast v2, Landroid/widget/ListView;

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    const/4 v2, 0x0

    check-cast v2, Ljava/util/List;

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanInProcess:Z

    const/4 v2, 0x0

    check-cast v2, Landroid/content/BroadcastReceiver;

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanWiFiReceiverIntent:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    check-cast v2, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Network details"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "Copy ESSID"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "Copy BSSID"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "Copy network key"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "Store network profile"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "Generate WPS PIN"

    aput-object v5, v3, v4

    sput-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->listContextMenuItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 1112
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnRefresh:Landroid/widget/Button;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBase:Landroid/widget/Button;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnStartGPSLog:Landroid/widget/Button;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnSettings:Landroid/widget/ImageButton;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->LocationMgr:Landroid/location/LocationManager;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/content/ClipboardManager;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->sClipboard:Landroid/content/ClipboardManager;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->lastWiFiClickItem:Landroid/widget/LinearLayout;

    move-object v2, v0

    new-instance v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000002;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000002;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnSettingsOnClick:Landroid/view/View$OnClickListener;

    move-object v2, v0

    new-instance v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000003;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000003;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnStartGPSLogOnClick:Landroid/view/View$OnClickListener;

    move-object v2, v0

    new-instance v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000005;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBaseOnClick:Landroid/view/View$OnClickListener;

    move-object v2, v0

    new-instance v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiListOnClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private CheckFromBase()V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 883
    move-object/from16 v2, p0

    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v4, v20

    .line 884
    const/16 v20, 0x0

    check-cast v20, Ljava/io/BufferedReader;

    move-object/from16 v5, v20

    .line 885
    const-string v20, ""

    move-object/from16 v6, v20

    .line 886
    const-string v20, ""

    move-object/from16 v7, v20

    .line 889
    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v8, v20

    .line 890
    move-object/from16 v20, v8

    const-string v21, "key"

    sget-object v22, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_READ_KEY:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v20

    .line 891
    new-instance v20, Lorg/json/JSONArray;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v9, v20

    .line 892
    sget-object v20, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    check-cast v20, Ljava/util/Collection;

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v10, v20

    .line 893
    :goto_0
    move-object/from16 v20, v10

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_0

    .line 895
    move-object/from16 v20, v8

    const-string v21, "bssid"

    move-object/from16 v22, v9

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v20

    .line 897
    new-instance v20, Ljava/net/URL;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v23, Lcom/example/WiFiPasswordSearcher/MyActivity;->SERVER_URI:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "/api/apiquery"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, v20

    .line 899
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    check-cast v20, Ljava/net/HttpURLConnection;

    move-object/from16 v13, v20

    .line 900
    move-object/from16 v20, v13

    const-string v21, "POST"

    invoke-virtual/range {v20 .. v21}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 901
    move-object/from16 v20, v13

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 902
    move-object/from16 v20, v13

    const-string v21, "Content-Type"

    const-string v22, "application/json"

    invoke-virtual/range {v20 .. v22}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    new-instance v20, Ljava/io/DataOutputStream;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v14, v20

    .line 906
    move-object/from16 v20, v14

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 908
    move-object/from16 v20, v13

    const/16 v21, 0x2710

    invoke-virtual/range {v20 .. v21}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 909
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->connect()V

    .line 911
    new-instance v20, Ljava/io/BufferedReader;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    new-instance v22, Ljava/io/InputStreamReader;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v5, v20

    .line 913
    :goto_1
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v20

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    move-object/from16 v6, v21

    if-nez v20, :cond_1

    .line 919
    :try_start_1
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    move-object/from16 v22, v7

    invoke-direct/range {v21 .. v22}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v20

    .line 920
    move-object/from16 v20, v15

    const-string v21, "result"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    new-instance v21, Ljava/lang/Boolean;

    move/from16 v31, v20

    move-object/from16 v32, v21

    move-object/from16 v20, v32

    move/from16 v21, v31

    move-object/from16 v22, v32

    move/from16 v31, v21

    move-object/from16 v32, v22

    move-object/from16 v21, v32

    move/from16 v22, v31

    invoke-direct/range {v21 .. v22}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v16, v20

    .line 922
    move-object/from16 v20, v16

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_4

    .line 925
    move-object/from16 v20, v15

    const-string v21, "error"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    .line 926
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyActivity;->User:Lcom/example/WiFiPasswordSearcher/UserManager;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Lcom/example/WiFiPasswordSearcher/UserManager;->GetErrorDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    .line 928
    move-object/from16 v20, v17

    if-eqz v20, :cond_3

    .line 929
    move-object/from16 v20, v17

    const-string v21, "loginfail"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 931
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v20, v0

    const-string v21, "KEYS_VALID"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 932
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v20

    .line 933
    const/16 v20, 0x0

    new-instance v21, Ljava/lang/Boolean;

    move/from16 v31, v20

    move-object/from16 v32, v21

    move-object/from16 v20, v32

    move/from16 v21, v31

    move-object/from16 v22, v32

    move/from16 v31, v21

    move-object/from16 v32, v22

    move-object/from16 v21, v32

    move/from16 v22, v31

    invoke-direct/range {v21 .. v22}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v20, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_KEYS_VALID:Ljava/lang/Boolean;

    .line 934
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/example/WiFiPasswordSearcher/MyActivity;->ApiDataTest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    :goto_2
    return-void

    .line 892
    :cond_0
    move-object/from16 v20, v10

    :try_start_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/example/WiFiPasswordSearcher/MyScanResult;

    move-object/from16 v12, v20

    .line 893
    move-object/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v20

    goto/16 :goto_0

    .line 914
    :cond_1
    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v20

    move-object/from16 v7, v20

    goto/16 :goto_1

    .line 937
    :cond_2
    move-object/from16 v20, v2

    :try_start_3
    new-instance v21, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;

    move-object/from16 v31, v21

    move-object/from16 v21, v31

    move-object/from16 v22, v31

    move-object/from16 v23, v2

    move-object/from16 v24, v18

    invoke-direct/range {v22 .. v24}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/example/WiFiPasswordSearcher/MyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 946
    :cond_3
    goto :goto_2

    .line 948
    :cond_4
    move-object/from16 v20, v15

    const-string v21, "data"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v20

    if-nez v20, :cond_5

    .line 952
    move-object/from16 v20, v15

    :try_start_4
    const-string v21, "data"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v20

    move-object/from16 v4, v20

    .line 989
    :cond_5
    :goto_3
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, v20

    .line 990
    const/16 v20, 0x0

    move/from16 v11, v20

    .line 993
    sget-object v20, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    check-cast v20, Ljava/util/Collection;

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v12, v20

    .line 1026
    :goto_4
    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1029
    new-instance v20, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v23, v8

    const v24, 0x7f030005

    const/16 v25, 0x7

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x0

    const-string v28, "ESSID"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x1

    const-string v28, "BSSID"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x2

    const-string v28, "KEY"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x3

    const-string v28, "WPS"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x4

    const-string v28, "SIGNAL"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x5

    const-string v28, "KEYSCOUNT"

    aput-object v28, v26, v27

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    const/16 v27, 0x6

    const-string v28, "CAPABILITY"

    aput-object v28, v26, v27

    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    invoke-direct/range {v21 .. v26}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    sput-object v20, Lcom/example/WiFiPasswordSearcher/MyActivity;->adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    .line 1033
    move-object/from16 v20, v2

    new-instance v21, Ljava/lang/Thread;

    move-object/from16 v31, v21

    move-object/from16 v21, v31

    move-object/from16 v22, v31

    new-instance v23, Lcom/example/WiFiPasswordSearcher/MyActivity$100000015;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000015;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    invoke-direct/range {v22 .. v23}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v20 .. v21}, Lcom/example/WiFiPasswordSearcher/MyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 952
    :catch_0
    move-exception v20

    move-object/from16 v17, v20

    .line 957
    :try_start_5
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v4, v20

    goto/16 :goto_3

    :catch_1
    move-exception v20

    move-object/from16 v15, v20

    .line 964
    move-object/from16 v20, v2

    :try_start_6
    new-instance v21, Lcom/example/WiFiPasswordSearcher/MyActivity$100000013;

    move-object/from16 v31, v21

    move-object/from16 v21, v31

    move-object/from16 v22, v31

    move-object/from16 v23, v2

    invoke-direct/range {v22 .. v23}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000013;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    invoke-virtual/range {v20 .. v21}, Lcom/example/WiFiPasswordSearcher/MyActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 972
    goto/16 :goto_2

    :catch_2
    move-exception v20

    move-object/from16 v8, v20

    .line 978
    move-object/from16 v20, v2

    new-instance v21, Lcom/example/WiFiPasswordSearcher/MyActivity$100000014;

    move-object/from16 v31, v21

    move-object/from16 v21, v31

    move-object/from16 v22, v31

    move-object/from16 v23, v2

    invoke-direct/range {v22 .. v23}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000014;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    invoke-virtual/range {v20 .. v21}, Lcom/example/WiFiPasswordSearcher/MyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 986
    goto/16 :goto_2

    .line 993
    :cond_6
    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/example/WiFiPasswordSearcher/MyScanResult;

    move-object/from16 v14, v20

    .line 994
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v23}, Lcom/example/WiFiPasswordSearcher/MyActivity;->GetWiFiKeyByBSSID(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/example/WiFiPasswordSearcher/APData;

    move-result-object v20

    move-object/from16 v15, v20

    .line 996
    new-instance v20, Ljava/util/HashMap;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v9, v20

    .line 997
    move-object/from16 v20, v9

    const-string v21, "ESSID"

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 998
    move-object/from16 v20, v9

    const-string v21, "BSSID"

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 999
    move-object/from16 v20, v9

    const-string v21, "SIGNAL"

    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    iget v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->level:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getStrSignal(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 1002
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 1003
    move-object/from16 v20, v9

    const-string v21, "KEY"

    const-string v22, "*[color:gray]*[unknown]"

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 1004
    move-object/from16 v20, v9

    const-string v21, "KEYSCOUNT"

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "*[color:gray]*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 1012
    :goto_5
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->WPS:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->WPS:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1014
    :cond_7
    move-object/from16 v20, v9

    const-string v21, "WPS"

    const-string v22, "*[color:gray]*[unknown]"

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 1022
    :goto_6
    move-object/from16 v20, v9

    const-string v21, "CAPABILITY"

    move-object/from16 v22, v14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/MyScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 1023
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 1025
    sget-object v20, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    move/from16 v21, v11

    move-object/from16 v22, v15

    invoke-virtual/range {v20 .. v22}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1026
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 1007
    :cond_8
    move-object/from16 v20, v15

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->Generated:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "*[color:red]*"

    :goto_7
    move-object/from16 v10, v20

    .line 1008
    move-object/from16 v20, v9

    const-string v21, "KEY"

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v23, v10

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 1009
    move-object/from16 v20, v9

    const-string v21, "KEYSCOUNT"

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "*[color:green]*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_5

    .line 1007
    :cond_9
    const-string v20, "*[color:green]*"

    goto :goto_7

    .line 1018
    :cond_a
    move-object/from16 v20, v9

    const-string v21, "WPS"

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "*[color:blue]*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v23, v15

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/APData;->WPS:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_6

    .line 1029
    nop

    :array_0
    .array-data 4
        0x7f070013
        0x7f070012
        0x7f070017
        0x7f070018
        0x7f070014
        0x7f070019
    .end array-data
.end method

.method private GetDataRowsFromLinLay(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 8

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    move-object v4, v6

    move-object v6, v4

    const-string v7, "BSSID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 411
    move-object v6, v1

    const v7, 0x7f070012

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    .line 417
    :goto_0
    return-object v0

    .line 411
    :cond_0
    move-object v6, v4

    const-string v7, "ESSID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 413
    move-object v6, v1

    const v7, 0x7f070013

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v4

    const-string v7, "KEY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 415
    move-object v6, v1

    const v7, 0x7f070017

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    goto :goto_0

    .line 417
    :cond_2
    const/4 v6, 0x0

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic access$1000030(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->GetDataRowsFromLinLay(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$1000035(Lcom/example/WiFiPasswordSearcher/MyActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->wpsGenStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000036(Lcom/example/WiFiPasswordSearcher/MyActivity;Lcom/example/WiFiPasswordSearcher/MyScanResult;Lcom/example/WiFiPasswordSearcher/APData;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->addNetworkProfile(Lcom/example/WiFiPasswordSearcher/MyScanResult;Lcom/example/WiFiPasswordSearcher/APData;)V

    return-void
.end method

.method static synthetic access$1000043(Lcom/example/WiFiPasswordSearcher/MyActivity;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/example/WiFiPasswordSearcher/MyActivity;->CheckFromBase()V

    return-void
.end method

.method static synthetic access$1000044(Lcom/example/WiFiPasswordSearcher/MyActivity;I)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getStrSignal(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$L1000011(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/widget/Button;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnRefresh:Landroid/widget/Button;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000012(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/widget/Button;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBase:Landroid/widget/Button;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000015()Ljava/util/List;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000016()Z
    .locals 3

    sget-boolean v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanInProcess:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$L1000017()Landroid/content/BroadcastReceiver;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanWiFiReceiverIntent:Landroid/content/BroadcastReceiver;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000018(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/net/wifi/WifiManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000020(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/content/ClipboardManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->sClipboard:Landroid/content/ClipboardManager;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000021()Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000022()[Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/MyActivity;->listContextMenuItems:[Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000011(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/widget/Button;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnRefresh:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$S1000012(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/widget/Button;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBase:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$S1000015(Ljava/util/List;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000016(Z)V
    .locals 4

    move v0, p0

    move v3, v0

    sput-boolean v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanInProcess:Z

    return-void
.end method

.method static synthetic access$S1000017(Landroid/content/BroadcastReceiver;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanWiFiReceiverIntent:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$S1000018(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/net/wifi/WifiManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$S1000020(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/content/ClipboardManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->sClipboard:Landroid/content/ClipboardManager;

    return-void
.end method

.method static synthetic access$S1000021(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    return-void
.end method

.method static synthetic access$S1000022([Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/MyActivity;->listContextMenuItems:[Ljava/lang/String;

    return-void
.end method

.method private addNetworkProfile(Lcom/example/WiFiPasswordSearcher/MyScanResult;Lcom/example/WiFiPasswordSearcher/APData;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/WiFiPasswordSearcher/MyScanResult;",
            "Lcom/example/WiFiPasswordSearcher/APData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v4, v8

    .line 617
    move-object v8, v4

    move-object v9, v1

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/MyScanResult;->BSSID:Ljava/lang/String;

    iput-object v9, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 618
    move-object v8, v4

    const-string v9, "\"%s\""

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/MyScanResult;->SSID:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 619
    move-object v8, v4

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 620
    move-object v8, v4

    const/16 v9, 0x3e8

    iput v9, v8, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 622
    move-object v8, v1

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/MyScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WEP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 624
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 625
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 626
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 627
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 628
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 629
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 630
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 631
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 632
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 634
    move-object v8, v4

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\"%s\""

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v2

    iget-object v14, v14, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 635
    move-object v8, v4

    const/4 v9, 0x0

    iput v9, v8, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 642
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    move v5, v8

    .line 643
    move v8, v5

    const/4 v9, -0x1

    if-le v8, v9, :cond_1

    .line 646
    move-object v8, v0

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Network profile added!"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    move-object v6, v8

    .line 662
    :goto_1
    move-object v8, v6

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    return-void

    .line 639
    :cond_0
    move-object v8, v4

    const-string v9, "\"%s\""

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v2

    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 651
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 653
    move-object v8, v0

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Failed to add network profile"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 658
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Wi-Fi interface is disabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    move-object v6, v8

    goto :goto_1
.end method

.method private getStrSignal(I)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1103
    move-object v0, p0

    move v1, p1

    const-string v5, ""

    move-object v3, v5

    .line 1104
    const/16 v5, 0x64

    move v6, v1

    add-int/2addr v5, v6

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v1, v5

    .line 1105
    move v5, v1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x64

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v1, v5

    .line 1107
    move v5, v1

    const/16 v6, 0x30

    if-ge v5, v6, :cond_0

    const-string v5, "*[color:red]*"

    move-object v3, v5

    .line 1108
    :cond_0
    move v5, v1

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    move v5, v1

    const/16 v6, 0x41

    if-ge v5, v6, :cond_1

    const-string v5, "*[color:yellow]*"

    move-object v3, v5

    .line 1109
    :cond_1
    move v5, v1

    const/16 v6, 0x41

    if-lt v5, v6, :cond_2

    const-string v5, "*[color:greendark]*"

    move-object v3, v5

    .line 1111
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private wpsGenStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v7, Landroid/content/Intent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    :try_start_0
    const-string v10, "com.example.WiFiPasswordSearcher.WPSActivity"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v4, v7

    .line 609
    move-object v7, v4

    const-string v8, "variable"

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 610
    move-object v7, v4

    const-string v8, "variable1"

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 611
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 608
    :catch_0
    move-exception v7

    move-object v5, v7

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public ApiDataTest()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    sget-object v5, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_KEYS_VALID:Ljava/lang/Boolean;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 680
    move-object v5, v0

    new-instance v6, Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/MyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 687
    new-instance v5, Landroid/content/Intent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    :try_start_0
    const-string v8, "com.example.WiFiPasswordSearcher.StartActivity"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v5

    .line 688
    move-object v5, v2

    const v6, 0x14008000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 689
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/MyActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 687
    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public GetWiFiKeyByBSSID(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/example/WiFiPasswordSearcher/APData;
    .locals 21

    .prologue
    .line 1046
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v14

    .line 1047
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v14

    .line 1048
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v14

    .line 1051
    move-object v14, v1

    move-object v15, v3

    :try_start_0
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x0

    :goto_0
    move v8, v14

    .line 1052
    move v14, v8

    if-eqz v14, :cond_0

    .line 1054
    move-object v14, v1

    move-object v15, v3

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    move-object v9, v14

    .line 1056
    const/4 v14, 0x0

    move v10, v14

    :goto_1
    move v14, v10

    move-object v15, v9

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-lt v14, v15, :cond_3

    .line 1069
    :cond_0
    :goto_2
    move-object v14, v5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    if-ne v14, v15, :cond_1

    .line 1071
    move-object v14, v0

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Lcom/example/WiFiPasswordSearcher/MyActivity;->PassiveVulnerabilityTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 1072
    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    if-eq v14, v15, :cond_1

    .line 1074
    move-object v14, v5

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 1075
    move-object v14, v6

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/Boolean;

    move/from16 v19, v15

    move-object/from16 v20, v16

    move-object/from16 v15, v20

    move/from16 v16, v19

    move-object/from16 v17, v20

    move/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v16, v20

    move/from16 v17, v19

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 1076
    move-object v14, v7

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 1080
    :cond_1
    new-instance v14, Lcom/example/WiFiPasswordSearcher/APData;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Lcom/example/WiFiPasswordSearcher/APData;-><init>()V

    move-object v8, v14

    .line 1081
    move-object v14, v8

    move-object v15, v3

    iput-object v15, v14, Lcom/example/WiFiPasswordSearcher/APData;->BSSID:Ljava/lang/String;

    .line 1082
    move-object v14, v8

    move-object v15, v5

    iput-object v15, v14, Lcom/example/WiFiPasswordSearcher/APData;->Keys:Ljava/util/ArrayList;

    .line 1083
    move-object v14, v8

    move-object v15, v6

    iput-object v15, v14, Lcom/example/WiFiPasswordSearcher/APData;->Generated:Ljava/util/ArrayList;

    .line 1084
    move-object v14, v8

    move-object v15, v7

    iput-object v15, v14, Lcom/example/WiFiPasswordSearcher/APData;->WPS:Ljava/util/ArrayList;

    .line 1086
    move-object v14, v8

    move-object v0, v14

    return-object v0

    .line 1051
    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    .line 1058
    :cond_3
    move-object v14, v9

    move v15, v10

    :try_start_1
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    move-object v11, v14

    .line 1059
    move-object v14, v5

    move-object v15, v11

    const-string v16, "key"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 1060
    move-object v14, v6

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/Boolean;

    move/from16 v19, v15

    move-object/from16 v20, v16

    move-object/from16 v15, v20

    move/from16 v16, v19

    move-object/from16 v17, v20

    move/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v16, v20

    move/from16 v17, v19

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 1061
    move-object v14, v11

    const-string v15, "wps"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 1062
    move-object v14, v12

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object v14, v7

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 1056
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v14

    move-object v8, v14

    .line 1066
    move-object v14, v8

    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public PassiveVulnerabilityTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1091
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v6, ""

    move-object v4, v6

    .line 1092
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-le v6, v7, :cond_0

    .line 1094
    move-object v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "MGTS_GPON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1096
    move-object v6, v2

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1097
    move-object v6, v4

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1100
    :cond_0
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method public ScanAndShowWiFi()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 748
    move-object v0, p0

    const/4 v4, 0x0

    check-cast v4, Ljava/util/List;

    sput-object v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    .line 749
    const/4 v4, 0x0

    check-cast v4, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    sput-object v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    .line 809
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 811
    move-object v4, v0

    const-string v5, "Wi-Fi interface is disabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    move-object v2, v4

    .line 813
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 878
    :goto_0
    return-void

    .line 816
    :cond_0
    new-instance v4, Landroid/app/ProgressDialog;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 817
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 818
    move-object v4, v2

    const-string v5, "Scanning networks..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 819
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 820
    move-object v4, v2

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 822
    new-instance v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000011;-><init>(Lcom/example/WiFiPasswordSearcher/MyActivity;Landroid/app/ProgressDialog;)V

    sput-object v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanWiFiReceiverIntent:Landroid/content/BroadcastReceiver;

    .line 873
    move-object v4, v0

    sget-object v5, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanWiFiReceiverIntent:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/example/WiFiPasswordSearcher/MyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 875
    const/4 v4, 0x1

    sput-boolean v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanInProcess:Z

    .line 876
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnRefresh:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 877
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBase:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 878
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v4

    goto :goto_0
.end method

.method public btnRefreshOnClick(Landroid/view/View;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanInProcess:Z

    if-eqz v7, :cond_0

    .line 356
    :goto_0
    return-void

    .line 347
    :cond_0
    sget-object v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 348
    :cond_1
    sget-object v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiScanResult:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 350
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object v3, v7

    .line 351
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 352
    new-instance v7, Landroid/widget/SimpleAdapter;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v3

    move-object v10, v4

    const v11, 0x7f030005

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    const-string v15, "ESSID"

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    const-string v15, "BSSID"

    aput-object v15, v13, v14

    const/4 v13, 0x2

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    invoke-direct/range {v8 .. v13}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object v5, v7

    .line 355
    sget-object v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanAndShowWiFi()V

    goto :goto_0

    .line 352
    :array_0
    .array-data 4
        0x7f070013
        0x7f070012
    .end array-data
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 403
    move-object v0, p0

    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const-string v7, "com.aide.ui"

    invoke-static {v6, v7}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 695
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 696
    move-object v6, v0

    const v7, 0x7f030004

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->setContentView(I)V

    .line 697
    move-object v6, v0

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    move-object v3, v6

    .line 698
    move-object v6, v3

    invoke-virtual {v6}, Landroid/app/ActionBar;->hide()V

    .line 700
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-le v6, v7, :cond_0

    .line 701
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    move-object v4, v6

    .line 702
    move-object v6, v4

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 704
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->APP_VERSION:Ljava/lang/String;

    .line 706
    move-object v6, v0

    new-instance v7, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-virtual {v9}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    .line 707
    move-object v6, v0

    new-instance v7, Lcom/example/WiFiPasswordSearcher/UserManager;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-virtual {v9}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->User:Lcom/example/WiFiPasswordSearcher/UserManager;

    .line 709
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "SERVER_LOGIN"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->SERVER_LOGIN:Ljava/lang/String;

    .line 710
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "SERVER_PASSWORD"

    const-string v8, "antichat"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->SERVER_PASSWORD:Ljava/lang/String;

    .line 711
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "SERVER_URI"

    const-string v8, "http://3wifi.stascorp.com"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->SERVER_URI:Ljava/lang/String;

    .line 712
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "READ_KEY"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_READ_KEY:Ljava/lang/String;

    .line 713
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "WRITE_KEY"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_WRITE_KEY:Ljava/lang/String;

    .line 714
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "KEYS_VALID"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance v7, Ljava/lang/Boolean;

    move v10, v6

    move-object v11, v7

    move-object v6, v11

    move v7, v10

    move-object v8, v11

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->API_KEYS_VALID:Ljava/lang/Boolean;

    .line 717
    move-object v6, v0

    const v7, 0x7f07000f

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    sput-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    .line 718
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07000b

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnRefresh:Landroid/widget/Button;

    .line 719
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07000c

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBase:Landroid/widget/Button;

    .line 720
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07000e

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnSettings:Landroid/widget/ImageButton;

    .line 721
    move-object v6, v0

    move-object v7, v0

    const v8, 0x7f07000d

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnStartGPSLog:Landroid/widget/Button;

    .line 723
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->WifiMgr:Landroid/net/wifi/WifiManager;

    .line 724
    move-object v6, v0

    move-object v7, v0

    const-string v8, "location"

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->LocationMgr:Landroid/location/LocationManager;

    .line 725
    move-object v6, v0

    move-object v7, v0

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    iput-object v7, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->sClipboard:Landroid/content/ClipboardManager;

    .line 727
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBase:Landroid/widget/Button;

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBaseOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnStartGPSLog:Landroid/widget/Button;

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnStartGPSLogOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnSettings:Landroid/widget/ImageButton;

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnSettingsOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    sget-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiListOnClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 732
    sget-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    if-eqz v6, :cond_1

    .line 734
    sget-object v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->WiFiList:Landroid/widget/ListView;

    sget-object v7, Lcom/example/WiFiPasswordSearcher/MyActivity;->adapter:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 735
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->btnCheckFromBase:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 737
    :cond_1
    sget-boolean v6, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanInProcess:Z

    if-eqz v6, :cond_2

    .line 742
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/MyActivity;->ScanAndShowWiFi()V

    .line 743
    new-instance v6, Lcom/example/WiFiPasswordSearcher/CliHelper;

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/CliHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 673
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 667
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
