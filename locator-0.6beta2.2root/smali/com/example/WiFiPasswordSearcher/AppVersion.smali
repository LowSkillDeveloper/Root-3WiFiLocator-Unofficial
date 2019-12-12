.class public Lcom/example/WiFiPasswordSearcher/AppVersion;
.super Ljava/lang/Object;
.source "AppVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;,
        Lcom/example/WiFiPasswordSearcher/AppVersion$100000001;
    }
.end annotation


# instance fields
.field private ActualyVersion:Ljava/lang/Float;

.field private LoadSuccesses:Ljava/lang/Boolean;

.field private SERVER_URI:Ljava/lang/String;

.field private WhatNews:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private wpsInternalDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    const/4 v6, 0x0

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

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/AppVersion;->LoadSuccesses:Ljava/lang/Boolean;

    move-object v5, v0

    const-string v6, "2018-04-29 23:30:29"

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsInternalDate:Ljava/lang/String;

    .line 40
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    .line 41
    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Float;

    move v10, v6

    move-object v11, v7

    move-object v6, v11

    move v7, v10

    move-object v8, v11

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/AppVersion;->ActualyVersion:Ljava/lang/Float;

    .line 42
    move-object v5, v0

    const-string v6, ""

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/AppVersion;->WhatNews:Ljava/lang/String;

    .line 44
    new-instance v5, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 45
    move-object v5, v0

    move-object v6, v3

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "SERVER_URI"

    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/AppVersion;->SERVER_URI:Ljava/lang/String;

    return-void
.end method

.method private GetActualyVersion()V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object/from16 v2, p0

    const-string v17, "/api/ajax.php?Query=AppVersion"

    move-object/from16 v4, v17

    .line 74
    const/16 v17, 0x0

    check-cast v17, Ljava/io/BufferedReader;

    move-object/from16 v5, v17

    .line 75
    const-string v17, ""

    move-object/from16 v6, v17

    .line 76
    const-string v17, ""

    move-object/from16 v7, v17

    .line 79
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/AppVersion;->SERVER_URI:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, v17

    .line 81
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    check-cast v17, Ljava/net/HttpURLConnection;

    move-object/from16 v13, v17

    .line 82
    move-object/from16 v17, v13

    const-string v18, "GET"

    invoke-virtual/range {v17 .. v18}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 83
    move-object/from16 v17, v13

    const/16 v18, 0x2710

    invoke-virtual/range {v17 .. v18}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->connect()V

    .line 86
    new-instance v17, Ljava/io/BufferedReader;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v5, v17

    .line 88
    :goto_0
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v6, v18

    if-nez v17, :cond_0

    .line 93
    :try_start_1
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v7

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, v17

    .line 94
    move-object/from16 v17, v14

    const-string v18, "Successes"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    new-instance v18, Ljava/lang/Boolean;

    move/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v17, v23

    move/from16 v18, v22

    move-object/from16 v19, v23

    move/from16 v22, v18

    move-object/from16 v23, v19

    move-object/from16 v18, v23

    move/from16 v19, v22

    invoke-direct/range {v18 .. v19}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v15, v17

    .line 95
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/AppVersion;->LoadSuccesses:Ljava/lang/Boolean;

    .line 96
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/AppVersion;->LoadSuccesses:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 98
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    const-string v19, "ActualyVersion"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    new-instance v19, Ljava/lang/Float;

    move/from16 v22, v18

    move-object/from16 v23, v19

    move-object/from16 v18, v23

    move/from16 v19, v22

    move-object/from16 v20, v23

    move/from16 v22, v19

    move-object/from16 v23, v20

    move-object/from16 v19, v23

    move/from16 v20, v22

    invoke-direct/range {v19 .. v20}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/AppVersion;->ActualyVersion:Ljava/lang/Float;

    .line 99
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    const-string v19, "WhatNews"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/AppVersion;->WhatNews:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_1
    return-void

    .line 89
    :cond_0
    :try_start_2
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_0

    .line 106
    :cond_1
    :goto_2
    goto :goto_1

    .line 100
    :catch_0
    move-exception v17

    move-object/from16 v14, v17

    .line 106
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v17

    move-object/from16 v8, v17

    move-object/from16 v17, v8

    throw v17
.end method

.method static synthetic access$L1000000(Lcom/example/WiFiPasswordSearcher/AppVersion;)Landroid/content/Context;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/example/WiFiPasswordSearcher/AppVersion;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    return-void
.end method

.method private wpsCompanionExists()Ljava/lang/Boolean;
    .locals 10

    .prologue
    .line 149
    move-object v0, p0

    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "/wpspin.html"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 150
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    new-instance v5, Ljava/lang/Boolean;

    move v8, v4

    move-object v9, v5

    move-object v4, v9

    move v5, v8

    move-object v6, v9

    move v8, v5

    move-object v9, v6

    move-object v5, v9

    move v6, v8

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public ShowUpdateDialog(Landroid/app/Activity;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 52
    move-object v5, v3

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "New version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/AppVersion;->ActualyVersion:Ljava/lang/Float;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " available!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 53
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/AppVersion;->WhatNews:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 54
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 55
    move-object v5, v3

    const-string v6, "Download"

    new-instance v7, Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;-><init>(Lcom/example/WiFiPasswordSearcher/AppVersion;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 63
    move-object v5, v3

    const-string v6, "Ask later"

    new-instance v7, Lcom/example/WiFiPasswordSearcher/AppVersion$100000001;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/AppVersion$100000001;-><init>(Lcom/example/WiFiPasswordSearcher/AppVersion;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 68
    move-object v5, v3

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    return-void
.end method

.method public isActualyVersion(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 13

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Boolean;

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    move-object v10, v12

    move v11, v9

    move-object v12, v10

    move-object v9, v12

    move v10, v11

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->LoadSuccesses:Ljava/lang/Boolean;

    .line 120
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->LoadSuccesses:Ljava/lang/Boolean;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 121
    move-object v7, v0

    :try_start_0
    invoke-direct {v7}, Lcom/example/WiFiPasswordSearcher/AppVersion;->GetActualyVersion()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_1
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->LoadSuccesses:Ljava/lang/Boolean;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 127
    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    move-object v7, v1

    const-string v8, "No internet connection"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    move-object v4, v7

    .line 130
    move-object v7, v4

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 132
    :cond_2
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Boolean;

    move v11, v7

    move-object v12, v8

    move-object v7, v12

    move v8, v11

    move-object v9, v12

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v7

    .line 144
    :goto_1
    return-object v0

    .line 121
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 123
    move-object v7, v0

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Boolean;

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    move-object v10, v12

    move v11, v9

    move-object v12, v10

    move-object v9, v12

    move v10, v11

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v8, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->LoadSuccesses:Ljava/lang/Boolean;

    goto :goto_0

    .line 134
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    new-instance v8, Ljava/lang/Float;

    move v11, v7

    move-object v12, v8

    move-object v7, v12

    move v8, v11

    move-object v9, v12

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    move-object v4, v7

    .line 135
    move-object v7, v4

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/AppVersion;->ActualyVersion:Ljava/lang/Float;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    .line 137
    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 139
    move-object v7, v1

    const-string v8, "Using latest version"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    move-object v5, v7

    .line 140
    move-object v7, v5

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 142
    :cond_4
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Boolean;

    move v11, v7

    move-object v12, v8

    move-object v7, v12

    move v8, v11

    move-object v9, v12

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v7

    goto :goto_1

    .line 144
    :cond_5
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Boolean;

    move v11, v7

    move-object v12, v8

    move-object v7, v12

    move v8, v11

    move-object v9, v12

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v7

    goto :goto_1
.end method

.method public readableFileSize(J)Ljava/lang/String;
    .locals 17

    .prologue
    .line 232
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v7, v1

    const/4 v9, 0x0

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    const-string v7, "0"

    move-object v0, v7

    .line 235
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    const-string v10, "B"

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    const-string v10, "KiB"

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x2

    const-string v10, "MiB"

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x3

    const-string v10, "GiB"

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x4

    const-string v10, "TiB"

    aput-object v10, v8, v9

    move-object v4, v7

    .line 234
    move-wide v7, v1

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v7

    const/16 v9, 0x400

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    move v5, v7

    .line 235
    new-instance v7, Ljava/lang/StringBuffer;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/text/DecimalFormat;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const-string v11, "#,##0.#"

    invoke-direct {v10, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide v10, v1

    long-to-double v10, v10

    const/16 v12, 0x400

    int-to-double v12, v12

    move v14, v5

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public wpsCompanionGetDate()Ljava/util/Date;
    .locals 10

    .prologue
    .line 206
    move-object v0, p0

    new-instance v5, Ljava/io/File;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "/wpspin.html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 207
    new-instance v5, Ljava/util/Date;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    move-object v3, v5

    .line 208
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 209
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method public wpsCompanionGetPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 198
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionExists()Ljava/lang/Boolean;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 201
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/wpspin.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public wpsCompanionGetSize()J
    .locals 9

    .prologue
    .line 214
    move-object v0, p0

    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "/wpspin.html"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 215
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-wide v0, v4

    return-wide v0
.end method

.method public wpsCompanionInit(Ljava/lang/Boolean;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    invoke-direct {v12}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionExists()Ljava/lang/Boolean;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v1

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_0

    .line 175
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v12, "wpspin.html"

    move-object v3, v12

    .line 161
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    move-object v4, v12

    .line 162
    move-object v12, v4

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v12

    move v5, v12

    .line 163
    move v12, v5

    new-array v12, v12, [B

    move-object v6, v12

    .line 164
    move-object v12, v4

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 165
    move-object v12, v4

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 166
    new-instance v12, Ljava/lang/String;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v6

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v7, v12

    .line 168
    new-instance v12, Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    iget-object v14, v14, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f050003

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v12

    .line 171
    move-object v12, v9

    move-object v13, v0

    :try_start_1
    iget-object v13, v13, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsInternalDate:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    move-object v8, v12

    .line 175
    :goto_1
    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    :try_start_2
    invoke-virtual {v12, v13, v14}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionUpdate(Ljava/lang/String;Ljava/util/Date;)V

    :goto_2
    goto :goto_0

    .line 171
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 173
    new-instance v12, Ljava/util/Date;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/util/Date;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v12

    goto :goto_1

    .line 175
    :catch_1
    move-exception v12

    move-object v4, v12

    goto :goto_2
.end method

.method public wpsCompanionInternal()Ljava/lang/Boolean;
    .locals 12

    .prologue
    .line 220
    move-object v0, p0

    new-instance v6, Ljava/text/SimpleDateFormat;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v6

    .line 223
    move-object v6, v3

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsInternalDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 227
    :goto_0
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    const/4 v7, 0x0

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    :goto_1
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

    move-object v0, v6

    return-object v0

    .line 223
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 225
    new-instance v6, Ljava/util/Date;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    move-object v2, v6

    goto :goto_0

    .line 227
    :cond_0
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public wpsCompanionUpdate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v8, Ljava/io/File;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v0

    iget-object v11, v11, Lcom/example/WiFiPasswordSearcher/AppVersion;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "/wpspin.html"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 186
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v8

    .line 187
    move-object v8, v1

    const-string v9, "a.filter((n) => b.includes(n));"

    const-string v10, "a;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 188
    move-object v8, v1

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    move-object v6, v8

    .line 189
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 190
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 191
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_0
    return-void

    :catch_0
    move-exception v8

    move-object v5, v8

    goto :goto_0
.end method
