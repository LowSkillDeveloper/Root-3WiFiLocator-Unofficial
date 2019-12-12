.class Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;
.super Landroid/os/AsyncTask;
.source "WPSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "GetPinsFromBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase$100000007;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;


# direct methods
.method public constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V
    .locals 5

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;)Lcom/example/WiFiPasswordSearcher/WPSActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 26

    .prologue
    .line 407
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v2

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object v4, v15

    .line 408
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 410
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsScore:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 411
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsDb:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 412
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 413
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsMet:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 414
    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v6, v15

    .line 415
    new-instance v15, Lorg/apache/http/impl/client/BasicResponseHandler;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    move-object v7, v15

    .line 417
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v21, Lcom/example/WiFiPasswordSearcher/WPSActivity;->SERVER_URI:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "/api/apiwps?key="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    sget-object v20, Lcom/example/WiFiPasswordSearcher/WPSActivity;->API_READ_KEY:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "&bssid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v8, v15

    .line 420
    move-object v15, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    :try_start_0
    invoke-virtual/range {v15 .. v17}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v5, v15

    .line 424
    :try_start_1
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v17}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v15

    .line 425
    move-object v15, v9

    const-string v16, "result"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    new-instance v16, Ljava/lang/Boolean;

    move/from16 v24, v15

    move-object/from16 v25, v16

    move-object/from16 v15, v25

    move/from16 v16, v24

    move-object/from16 v17, v25

    move/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v16, v25

    move/from16 v17, v24

    invoke-direct/range {v16 .. v17}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v10, v15

    .line 427
    move-object v15, v10

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v15

    if-eqz v15, :cond_2

    .line 431
    move-object v15, v9

    :try_start_2
    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object v9, v15

    .line 432
    move-object v15, v9

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object v9, v15

    .line 434
    move-object v15, v9

    const-string v16, "scores"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object v11, v15

    .line 435
    const/4 v15, 0x0

    move v12, v15

    :goto_0
    move v15, v12

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 482
    :goto_1
    move-object v15, v5

    move-object v1, v15

    return-object v1

    .line 437
    :cond_0
    move-object v15, v11

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object v9, v15

    .line 438
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object/from16 v16, v9

    const-string v17, "value"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 439
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsMet:Ljava/util/ArrayList;

    move-object/from16 v16, v9

    const-string v17, "name"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 440
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsScore:Ljava/util/ArrayList;

    move-object/from16 v16, v9

    const-string v17, "score"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 441
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsDb:Ljava/util/ArrayList;

    move-object/from16 v16, v9

    const-string v17, "fromdb"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v16, "\u2714"

    :goto_2
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 442
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsScore:Ljava/util/ArrayList;

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    const/16 v16, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    new-instance v16, Ljava/lang/Integer;

    move/from16 v24, v15

    move-object/from16 v25, v16

    move-object/from16 v15, v25

    move/from16 v16, v24

    move-object/from16 v17, v25

    move/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v16, v25

    move/from16 v17, v24

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(I)V

    move-object v13, v15

    .line 443
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsScore:Ljava/util/ArrayList;

    move/from16 v16, v12

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v13

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 445
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    new-instance v16, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsPin:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsMet:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsScore:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity;->wpsDb:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-direct/range {v17 .. v21}, Lcom/example/WiFiPasswordSearcher/ItemWps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 435
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 441
    :cond_1
    const-string v16, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 435
    :catch_0
    move-exception v15

    move-object v11, v15

    goto/16 :goto_1

    .line 453
    :cond_2
    move-object v15, v9

    :try_start_3
    const-string v16, "error"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v11, v15

    .line 455
    move-object v15, v11

    const-string v16, "loginfail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 457
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000002(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Lcom/example/WiFiPasswordSearcher/Settings;

    move-result-object v15

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v16, "KEYS_VALID"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 458
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v15}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000002(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Lcom/example/WiFiPasswordSearcher/Settings;

    move-result-object v15

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v15

    .line 459
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    new-instance v16, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase$100000007;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase$100000007;-><init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;)V

    invoke-virtual/range {v15 .. v16}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getApplicationContext()Landroid/content/Context;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v17

    :try_start_4
    const-string v18, "com.example.WiFiPasswordSearcher.StartActivity"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v18

    :try_start_5
    invoke-direct/range {v16 .. v18}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v12, v15

    .line 467
    move-object v15, v12

    const v16, 0x14008000

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v15

    .line 468
    move-object v15, v1

    iget-object v15, v15, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    :cond_3
    const-string v15, "api_error"

    move-object v5, v15

    goto/16 :goto_1

    .line 466
    :catch_1
    move-exception v15

    move-object v13, v15

    new-instance v15, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 470
    :catch_2
    move-exception v15

    move-object v9, v15

    .line 475
    :try_start_6
    const-string v15, "json_error"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v5, v15

    goto/16 :goto_1

    :catch_3
    move-exception v15

    move-object v9, v15

    .line 480
    const-string v15, "http_error"

    move-object v5, v15

    goto/16 :goto_1
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 489
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const v8, 0x7f070049

    invoke-virtual {v7, v8}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    move-object v3, v7

    .line 490
    const-string v7, ""

    move-object v4, v7

    .line 491
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Boolean;

    move v14, v7

    move-object v15, v8

    move-object v7, v15

    move v8, v14

    move-object v9, v15

    move v14, v8

    move-object v15, v9

    move-object v8, v15

    move v9, v14

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, v7

    .line 492
    move-object v7, v1

    const-string v8, "http_error"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 494
    const-string v7, "No internet connection"

    move-object v4, v7

    .line 495
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Boolean;

    move v14, v7

    move-object v15, v8

    move-object v7, v15

    move v8, v14

    move-object v9, v15

    move v14, v8

    move-object v15, v9

    move-object v8, v15

    move v9, v14

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, v7

    .line 511
    :cond_0
    :goto_0
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-le v7, v8, :cond_1

    .line 513
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    new-instance v8, Lcom/example/WiFiPasswordSearcher/ItemWps;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    move-object v11, v4

    const/4 v12, 0x0

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    check-cast v13, Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/example/WiFiPasswordSearcher/ItemWps;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 514
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 517
    :cond_1
    move-object v7, v3

    new-instance v8, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v11, v11, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    invoke-direct {v9, v10, v11}, Lcom/example/WiFiPasswordSearcher/MyAdapterWps;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 497
    :cond_2
    move-object v7, v1

    const-string v8, "json_error"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 499
    const-string v7, "Connection failure"

    move-object v4, v7

    .line 500
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Boolean;

    move v14, v7

    move-object v15, v8

    move-object v7, v15

    move v8, v14

    move-object v9, v15

    move v14, v8

    move-object v15, v9

    move-object v8, v15

    move v9, v14

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, v7

    goto :goto_0

    .line 502
    :cond_3
    move-object v7, v1

    const-string v8, "api_error"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 504
    const-string v7, "Database failure"

    move-object v4, v7

    .line 505
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Boolean;

    move v14, v7

    move-object v15, v8

    move-object v7, v15

    move v8, v14

    move-object v9, v15

    move v14, v8

    move-object v15, v9

    move-object v8, v15

    move v9, v14

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, v7

    goto :goto_0

    .line 507
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/WPSActivity;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 509
    const-string v7, "No pins found"

    move-object v4, v7

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 393
    const-string v4, "Getting pins..."

    move-object v2, v4

    .line 395
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 401
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const-string v6, "Please wait..."

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
