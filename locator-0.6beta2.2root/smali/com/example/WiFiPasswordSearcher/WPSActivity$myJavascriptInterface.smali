.class Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;
.super Ljava/lang/Object;
.source "WPSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "myJavascriptInterface"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;


# direct methods
.method public constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V
    .locals 5

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;)Lcom/example/WiFiPasswordSearcher/WPSActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public getPins(ILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 564
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    invoke-direct {v11, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 566
    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move-object v11, v5

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v10, v11, :cond_0

    .line 581
    move v10, v1

    const/4 v11, 0x0

    if-le v10, v11, :cond_2

    .line 582
    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v10}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000000(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/webkit/WebView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "javascript:window.JavaHandler.getPins(0,JSON.stringify(pinSuggestAPI(false,\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\',null)), \'\');"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 589
    :goto_1
    return-void

    .line 568
    :cond_0
    move-object v10, v5

    move v11, v6

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    move-object v7, v10

    .line 569
    move v10, v1

    const/4 v11, 0x0

    if-le v10, v11, :cond_1

    .line 571
    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v8, v10

    .line 572
    move-object v10, v8

    move-object v11, v7

    const-string v12, "pin"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/example/WiFiPasswordSearcher/WPSPin;->pin:Ljava/lang/String;

    .line 573
    move-object v10, v8

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/Boolean;

    move v14, v11

    move-object v15, v12

    move-object v11, v15

    move v12, v14

    move-object v13, v15

    move v14, v12

    move-object v15, v13

    move-object v12, v15

    move v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v11, v10, Lcom/example/WiFiPasswordSearcher/WPSPin;->sugg:Ljava/lang/Boolean;

    .line 566
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 577
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    move-object v11, v7

    const-string v12, "algo"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v8, v10

    .line 578
    move-object v10, v8

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/Boolean;

    move v14, v11

    move-object v15, v12

    move-object v11, v15

    move v12, v14

    move-object v13, v15

    move v14, v12

    move-object v15, v13

    move-object v12, v15

    move v13, v14

    invoke-direct {v12, v13}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v11, v10, Lcom/example/WiFiPasswordSearcher/WPSPin;->sugg:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 584
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 588
    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 589
    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$S1000007(Lcom/example/WiFiPasswordSearcher/WPSActivity;Z)V

    goto :goto_1

    .line 584
    :cond_2
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$S1000007(Lcom/example/WiFiPasswordSearcher/WPSActivity;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public initAlgos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 540
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v1

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 542
    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 551
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v9}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000000(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/webkit/WebView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "javascript:window.JavaHandler.getPins(1,JSON.stringify(pinSuggestAPI(true,\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\',null)), \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\');"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 555
    :goto_1
    return-void

    .line 544
    :cond_0
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object v6, v9

    .line 546
    new-instance v9, Lcom/example/WiFiPasswordSearcher/WPSPin;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lcom/example/WiFiPasswordSearcher/WPSPin;-><init>()V

    move-object v7, v9

    .line 547
    move-object v9, v7

    move-object v10, v6

    const-string v11, "mode"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/example/WiFiPasswordSearcher/WPSPin;->mode:I

    .line 548
    move-object v9, v7

    move-object v10, v6

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/example/WiFiPasswordSearcher/WPSPin;->name:Ljava/lang/String;

    .line 549
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pins:Ljava/util/ArrayList;

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 542
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 551
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 555
    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/WPSActivity$myJavascriptInterface;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$S1000007(Lcom/example/WiFiPasswordSearcher/WPSActivity;Z)V

    goto :goto_1
.end method
