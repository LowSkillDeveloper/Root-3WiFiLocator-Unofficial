.class Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;
.super Landroid/os/AsyncTask;
.source "WPSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "AsyncInitActivity"
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
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;)Lcom/example/WiFiPasswordSearcher/WPSActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

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

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .prologue
    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v3, v11

    .line 329
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object v5, v11

    .line 331
    new-instance v11, Lorg/apache/http/impl/client/BasicResponseHandler;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    move-object v6, v11

    .line 333
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "http://wpsfinder.com/ethernet-wifi-brand-lookup/MAC:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 336
    move-object v11, v5

    move-object v12, v7

    move-object v13, v6

    :try_start_0
    invoke-virtual {v11, v12, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v4, v11

    .line 337
    move-object v11, v4

    move-object v12, v4

    const-string v13, "muted\'><center>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0xf

    add-int/lit8 v12, v12, 0xf

    move-object v13, v4

    const-string v14, "<center></h4><h6"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v4, v11

    .line 344
    :goto_0
    const/16 v11, 0x1f40

    move v8, v11

    .line 345
    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v11}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000007(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Z

    move-result v11

    if-nez v11, :cond_0

    move v11, v8

    const/4 v12, 0x0

    if-gt v11, v12, :cond_1

    .line 356
    :cond_0
    move-object v11, v4

    move-object v0, v11

    return-object v0

    .line 337
    :catch_0
    move-exception v11

    move-object v8, v11

    .line 341
    const-string v11, "N/A"

    move-object v4, v11

    goto :goto_0

    .line 349
    :cond_1
    const/16 v11, 0x64

    int-to-long v11, v11

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    move v11, v8

    const/16 v12, 0x64

    add-int/lit8 v11, v11, -0x64

    move v8, v11

    goto :goto_1

    :catch_1
    move-exception v11

    move-object v9, v11

    goto :goto_1
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9
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
    .line 362
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v6}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000002(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Lcom/example/WiFiPasswordSearcher/Settings;

    move-result-object v6

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v7, "WPS_SOURCE"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v3, v6

    .line 363
    move v6, v3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 364
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 365
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const v7, 0x7f070048

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v4, v6

    .line 366
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_1

    .line 368
    const-string v6, "unknown vendor"

    move-object v1, v6

    .line 370
    :cond_1
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    move v6, v3

    packed-switch v6, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 375
    :pswitch_0
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v7, 0x0

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->btnwpsbaseclick(Landroid/view/View;)V

    .line 376
    goto :goto_0

    .line 378
    :pswitch_1
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v7, 0x0

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->btnGenerate(Landroid/view/View;)V

    .line 379
    goto :goto_0

    .line 381
    :pswitch_2
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const/4 v7, 0x0

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->btnLocalClick(Landroid/view/View;)V

    .line 382
    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 320
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$AsyncInitActivity;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    const-string v4, "Please wait..."

    const-string v5, "Initializing..."

    invoke-static {v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->pd:Landroid/app/ProgressDialog;

    return-void
.end method
