.class public Lcom/example/WiFiPasswordSearcher/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;,
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;,
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000005;,
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000006;,
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;,
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;,
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;
    }
.end annotation


# static fields
.field private static VersionAlreadyChecked:Ljava/lang/Boolean;


# instance fields
.field public SERVER_URI:Ljava/lang/String;

.field private User:Lcom/example/WiFiPasswordSearcher/UserManager;

.field public btnGetKeys:Landroid/widget/Button;

.field public btnStart:Landroid/widget/Button;

.field public btnUserInfo:Landroid/widget/Button;

.field public edtLogin:Landroid/widget/EditText;

.field public edtPassword:Landroid/widget/EditText;

.field public llMenu:Landroid/widget/LinearLayout;

.field private mSettings:Lcom/example/WiFiPasswordSearcher/Settings;


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    move v5, v2

    move-object v6, v3

    move-object v2, v6

    move v3, v5

    move-object v4, v6

    move v5, v3

    move-object v6, v4

    move-object v3, v6

    move v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->VersionAlreadyChecked:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const-string v3, ""

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->SERVER_URI:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtLogin:Landroid/widget/EditText;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtPassword:Landroid/widget/EditText;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnGetKeys:Landroid/widget/Button;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnStart:Landroid/widget/Button;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnUserInfo:Landroid/widget/Button;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->llMenu:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$1000014(Lcom/example/WiFiPasswordSearcher/StartActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getApiKeys(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method static synthetic access$L1000001()Ljava/lang/Boolean;
    .locals 3

    sget-object v2, Lcom/example/WiFiPasswordSearcher/StartActivity;->VersionAlreadyChecked:Ljava/lang/Boolean;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/example/WiFiPasswordSearcher/StartActivity;)Lcom/example/WiFiPasswordSearcher/UserManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity;->User:Lcom/example/WiFiPasswordSearcher/UserManager;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000001(Ljava/lang/Boolean;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/example/WiFiPasswordSearcher/StartActivity;->VersionAlreadyChecked:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/example/WiFiPasswordSearcher/StartActivity;Lcom/example/WiFiPasswordSearcher/UserManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/StartActivity;->User:Lcom/example/WiFiPasswordSearcher/UserManager;

    return-void
.end method

.method private getApiKeys(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const-string v23, "/api/apikeys"

    move-object/from16 v6, v23

    .line 177
    const-string v23, ""

    move-object/from16 v9, v23

    .line 182
    :try_start_0
    new-instance v23, Ljava/net/URL;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    new-instance v25, Ljava/lang/StringBuffer;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->SERVER_URI:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v26, v6

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v23

    .line 184
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    check-cast v23, Ljava/net/HttpURLConnection;

    move-object/from16 v11, v23

    .line 185
    move-object/from16 v23, v11

    const-string v24, "POST"

    invoke-virtual/range {v23 .. v24}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 186
    move-object/from16 v23, v11

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 187
    move-object/from16 v23, v11

    const-string v24, "Content-Type"

    const-string v25, "application/x-www-form-urlencoded"

    invoke-virtual/range {v23 .. v25}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v23, Ljava/io/DataOutputStream;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v12, v23

    .line 191
    move-object/from16 v23, v12

    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v25, Ljava/lang/StringBuffer;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v26, Ljava/lang/StringBuffer;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v27, Ljava/lang/StringBuffer;

    move-object/from16 v30, v27

    move-object/from16 v27, v30

    move-object/from16 v28, v30

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v28, "login="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v28, v3

    const-string v29, "UTF-8"

    invoke-static/range {v28 .. v29}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "&password="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v26, v4

    const-string v27, "UTF-8"

    invoke-static/range {v26 .. v27}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "&genread=1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 196
    move-object/from16 v23, v11

    const/16 v24, 0x2710

    invoke-virtual/range {v23 .. v24}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 197
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->connect()V

    .line 199
    new-instance v23, Ljava/io/BufferedReader;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    move-object/from16 v27, v11

    invoke-virtual/range {v27 .. v27}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v7, v23

    .line 201
    :goto_0
    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v23

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    move-object/from16 v8, v24

    if-nez v23, :cond_0

    .line 207
    const/16 v23, 0x0

    :try_start_1
    check-cast v23, Ljava/lang/String;

    move-object/from16 v13, v23

    const/16 v23, 0x0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v14, v23

    .line 208
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    move-object/from16 v25, v9

    invoke-direct/range {v24 .. v25}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v23

    .line 209
    move-object/from16 v23, v15

    const-string v24, "result"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    new-instance v24, Ljava/lang/Boolean;

    move/from16 v30, v23

    move-object/from16 v31, v24

    move-object/from16 v23, v31

    move/from16 v24, v30

    move-object/from16 v25, v31

    move/from16 v30, v24

    move-object/from16 v31, v25

    move-object/from16 v24, v31

    move/from16 v25, v30

    invoke-direct/range {v24 .. v25}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v16, v23

    .line 210
    move-object/from16 v23, v16

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 212
    move-object/from16 v23, v15

    const-string v24, "profile"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v17, v23

    .line 214
    move-object/from16 v23, v15

    const-string v24, "data"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    move-object/from16 v18, v23

    .line 215
    const/16 v23, 0x0

    move/from16 v19, v23

    :goto_1
    move/from16 v23, v19

    move-object/from16 v24, v18

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    .line 232
    :goto_2
    move-object/from16 v23, v13

    if-nez v23, :cond_5

    .line 234
    move-object/from16 v23, v2

    new-instance v24, Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v26}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V

    invoke-virtual/range {v23 .. v24}, Lcom/example/WiFiPasswordSearcher/StartActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    const/16 v23, 0x0

    move/from16 v2, v23

    .line 310
    :goto_3
    return v2

    .line 202
    :cond_0
    :try_start_2
    new-instance v23, Ljava/lang/StringBuffer;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v24, v9

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v24, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v23

    move-object/from16 v9, v23

    goto/16 :goto_0

    .line 217
    :cond_1
    move-object/from16 v23, v18

    move/from16 v24, v19

    :try_start_3
    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v20, v23

    .line 218
    move-object/from16 v23, v20

    const-string v24, "access"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v21, v23

    .line 220
    move-object/from16 v23, v21

    const-string v24, "read"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 222
    move-object/from16 v23, v20

    const-string v24, "key"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v13, v23

    .line 228
    :cond_2
    :goto_4
    move-object/from16 v23, v13

    if-eqz v23, :cond_4

    move-object/from16 v23, v14

    if-eqz v23, :cond_4

    .line 229
    goto :goto_2

    .line 224
    :cond_3
    move-object/from16 v23, v21

    const-string v24, "write"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 226
    move-object/from16 v23, v20

    const-string v24, "key"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v14, v23

    goto :goto_4

    .line 215
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 244
    :cond_5
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "SERVER_LOGIN"

    move-object/from16 v25, v3

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 245
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "SERVER_PASSWORD"

    move-object/from16 v25, v4

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 246
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "READ_KEY"

    move-object/from16 v25, v13

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 247
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "WRITE_KEY"

    move-object/from16 v25, v14

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 248
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "KEYS_VALID"

    const/16 v25, 0x1

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 249
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "USER_NICK"

    move-object/from16 v25, v17

    const-string v26, "nick"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 250
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "USER_REGDATE"

    move-object/from16 v25, v17

    const-string v26, "regdate"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 251
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    const-string v24, "USER_GROUP"

    move-object/from16 v25, v17

    const-string v26, "level"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    .line 252
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v23

    .line 254
    const/16 v23, 0x1

    move/from16 v2, v23

    goto/16 :goto_3

    .line 258
    :cond_6
    move-object/from16 v23, v15

    const-string v24, "error"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v23

    .line 259
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/StartActivity;->User:Lcom/example/WiFiPasswordSearcher/UserManager;

    move-object/from16 v23, v0

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Lcom/example/WiFiPasswordSearcher/UserManager;->GetErrorDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v23

    .line 261
    move-object/from16 v23, v17

    if-eqz v23, :cond_7

    .line 262
    move-object/from16 v23, v2

    new-instance v24, Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v2

    move-object/from16 v27, v18

    invoke-direct/range {v25 .. v27}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Lcom/example/WiFiPasswordSearcher/StartActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 270
    :cond_7
    const/16 v23, 0x0

    move/from16 v2, v23

    goto/16 :goto_3

    :catch_0
    move-exception v23

    move-object/from16 v13, v23

    .line 275
    move-object/from16 v23, v13

    :try_start_4
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 282
    :goto_5
    move-object/from16 v23, v2

    new-instance v24, Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v26}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V

    invoke-virtual/range {v23 .. v24}, Lcom/example/WiFiPasswordSearcher/StartActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    const/16 v23, 0x0

    move/from16 v2, v23

    goto/16 :goto_3

    .line 275
    :catch_1
    move-exception v23

    move-object/from16 v10, v23

    .line 280
    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public btnOffline(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "READ_KEY"

    const-string v8, "offline"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 316
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 317
    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.example.WiFiPasswordSearcher.MyActivity"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v6

    .line 318
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/StartActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 317
    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    move-object v6, v0

    const v7, 0x7f070025

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object v3, v6

    .line 160
    move-object v6, v0

    const v7, 0x7f070031

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    move-object v4, v6

    .line 162
    move-object v6, v1

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 164
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    move-object v6, v1

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 169
    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 170
    move-object v6, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    const-string v9, "com.aide.ui"

    invoke-static {v8, v9}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    move-object v8, v0

    const v9, 0x7f030008

    invoke-virtual {v8, v9}, Lcom/example/WiFiPasswordSearcher/StartActivity;->setContentView(I)V

    .line 46
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/example/WiFiPasswordSearcher/StartActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    move-object v8, v0

    new-instance v9, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-virtual {v11}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    .line 49
    move-object v8, v0

    new-instance v9, Lcom/example/WiFiPasswordSearcher/UserManager;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-virtual {v11}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/example/WiFiPasswordSearcher/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->User:Lcom/example/WiFiPasswordSearcher/UserManager;

    .line 51
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f070029

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtLogin:Landroid/widget/EditText;

    .line 52
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f07002b

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtPassword:Landroid/widget/EditText;

    .line 54
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f07002e

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->llMenu:Landroid/widget/LinearLayout;

    .line 55
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f07002c

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnGetKeys:Landroid/widget/Button;

    .line 56
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f07002f

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnStart:Landroid/widget/Button;

    .line 57
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f070030

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnUserInfo:Landroid/widget/Button;

    .line 59
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v10, "SERVER_URI"

    const-string v11, "http://3wifi.stascorp.com"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->SERVER_URI:Ljava/lang/String;

    .line 60
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "KEYS_VALID"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v9, Ljava/lang/Boolean;

    move v13, v8

    move-object v14, v9

    move-object v8, v14

    move v9, v13

    move-object v10, v14

    move v13, v9

    move-object v14, v10

    move-object v9, v14

    move v10, v13

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, v8

    .line 61
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "SERVER_LOGIN"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 62
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "SERVER_PASSWORD"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 63
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "CHECK_UPDATES"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v9, Ljava/lang/Boolean;

    move v13, v8

    move-object v14, v9

    move-object v8, v14

    move v9, v13

    move-object v10, v14

    move v13, v9

    move-object v14, v10

    move-object v9, v14

    move v10, v13

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, v8

    .line 65
    move-object v8, v3

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnGetKeys:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtLogin:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 69
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtPassword:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 70
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->llMenu:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    move-object v8, v6

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->VersionAlreadyChecked:Ljava/lang/Boolean;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    new-instance v8, Ljava/lang/Thread;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 95
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtLogin:Landroid/widget/EditText;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtPassword:Landroid/widget/EditText;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnGetKeys:Landroid/widget/Button;

    new-instance v9, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnUserInfo:Landroid/widget/Button;

    new-instance v9, Lcom/example/WiFiPasswordSearcher/StartActivity$100000005;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000005;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnStart:Landroid/widget/Button;

    new-instance v9, Lcom/example/WiFiPasswordSearcher/StartActivity$100000006;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000006;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
